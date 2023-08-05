/**
 * jquery.impulse-slider.js
 *
 * jquery.impulse-slider.js is a jQuery slider plugin based on the power of CSS3 transforms and transitions
 * in modern browsers
 *
 * ------------------------------------------------
 *  author:  Paulo Nunes  @pscnunes
 *
 *  version: 0.2
 *  url:     http://www.twoimpulse.com/impulseslider
 *
 * Copyright 2013 TwoImpulse
 * Free to use under the MIT license.
 *
 */

if(!window.console){ window.console = {log: function(){} }; }

(function($) {

    var currentYRot = 0;
    var directionRight = true;
    var height;
    var width;
    var paused = false;
    var isActive = true;
    var lastRotated = new Date();
    var pauseTime;

     window.onfocus = function () {
        isActive = true;
        console.log("Focus gained.");
    };

    window.onblur = function () {
        isActive = false;
        console.log("Focus lost.");
    };


    $.fn.extend({


        //pass the options variable to the function
        impulseslider: function(options) {


            //Set the default values, use comma to separate the settings, example:
            var defaults = {
                shape: 'cube',
                height: 400,
                width: 400,
                pauseTime: 3000,
                transitionDuration: 1000,
                transitionEffect: "ease", // "linear", "ease","ease-in","ease-out", "ease-in-out" or
                autostart: true,
                rightSelector: ".right",
                leftSelector: ".left",
                pauseSelector: ".pause",
                directionRight: true,
                containerSelector: "#cubeCarousel",
                spinnerSelector: "#cubeSpinner"
            };

            var degreesRotation;
            var opts = $.extend(defaults, options);
            var rightSelector = getString(opts.rightSelector, defaults.rightSelector);
            var leftSelector = getString(opts.leftSelector, defaults.leftSelector);
            var pauseSelector = getString(opts.pauseSelector, defaults.pauseSelector);
            directionRight = getBoolean(opts.directionRight, defaults.directionRight);
            height =  toNumber(opts.height, defaults.height);
            width =  toNumber(opts.width, defaults.width);
            var spinnerSelector = getString(opts.spinnerSelector, defaults.spinnerSelector);
            var containerSelector = getString(opts.containerSelector, defaults.containerSelector);
            var autostart = getBoolean(opts.autostart, defaults.autostart);
            paused = !autostart;
            pauseTime = toNumber(opts.pauseTime, defaults.pauseTime);
            var transitionDuration = toNumber(opts.transitionDuration, defaults.transitionDuration);
             var transitionEffect = getString(opts.transitionEffect, defaults.transitionEffect);




            // loop through the divs

            var list = $(this);
            var divs = $("div", list);


            if (divs.length == 3) {
                degreesRotation = 120;
                piramid(containerSelector, height,width, divs);
            }

            if (divs.length == 4) {
                degreesRotation = 90;
                cube(containerSelector, height,width, divs);
            }


            // apply listener to arrows
            $(rightSelector).click(function() {
                rotateRight(spinnerSelector,degreesRotation);
                console.log("Manually rotated %n degrees to the right",degreesRotation);
                paused = false;
            });

            $(leftSelector).click(function() {
                rotateLeft(spinnerSelector,degreesRotation);
                console.log("Manually rotated %n degrees to the left",degreesRotation);
                paused = false;
            });

            $(pauseSelector).click(function() {
                paused = true;
            });


            // time between transitions
            if (autostart) {
                //loop through the items
                var infiniteLoop = setInterval(function() {
                    if (!paused) {
                        if (isActive) {
                             var now = new Date();
                             var rotatedLongAgo = dateDiffGreaterThan(now,lastRotated,pauseTime/2);
                             if (rotatedLongAgo) {
                                rotate(spinnerSelector,degreesRotation);
                                console.log("Auto rotated %n degrees",degreesRotation);
                             } else {
                                console.log("Cancelled auto rotate - last rotation: %s millisecs ago",now - lastRotated);
                             }
                        } else {
                             console.log("Cancelled auto rotate. No focus.");
                        }
                    } else {
                        console.log("Cancelled auto rotate. Paused.");
                    }
                }, pauseTime);
            }

            // transition speed
            var secs = transitionDuration / 1000.0;

            // TODO split the transition CSS3 properties to avoid this string concatenation
            var style = "all " + secs + "s " + transitionEffect;
            $(spinnerSelector).css("-webkit-transition", style);
            $(spinnerSelector).css("-moz-transition", style);
            $(spinnerSelector).css("-o-transition", style);
            $(spinnerSelector).css("transition", style);


            console.log("Initialized plugin.");

        }
    });

    var resizeContainer = function (selector,height,width) {
         $(selector).css("-webkit-perspective", "800");
        $(selector).css("-moz-perspective", "800px");
        $(selector).css("-o-perspective", "800");
        $(selector).css("perspective", "800px");

        $(selector).css("width", width +"px");
        $(selector).css("height", height + "px");

    }



// `translate` builds a translate transform string for given data.
    var translate = function (t) {
        return " translate3d(" + t.x + "px," + t.y + "px," + t.z + "px) ";
    };


    var getString = function(value, fallback) {
        return (typeof value === 'undefined') ? fallback : value;
    }

    var getBoolean = function (value, fallback) {
        return (typeof value === 'undefined') ? fallback : value;
    }

    var toNumber = function (numeric, fallback) {
        return isNaN(numeric) ? (fallback || 0) : Number(numeric);
    };

    var cube = function (containerSelector,height,width, divs) {
        // TODO - complain if the number of divs <> 4
        var depth = width/2;
        var dataRotateX = 0;
        var dataRotateY = 0;
        var dataRotateZ = 0;

        $.each(divs, function(i, div) {
            switch (i) {
                case 0:
                    dataRotateX = 0;
                    dataRotateY = 0;
                    dataRotateZ = 0;
                    break;
                case 1:
                    dataRotateX = 0;
                    dataRotateY = 90;
                    dataRotateZ = 0;
                    break;
                case 2:
                    dataRotateX = 0;
                    dataRotateY = 180;
                    dataRotateZ = 0;
                    break;
                case 3:
                    dataRotateX = 0;
                    dataRotateY = -90;
                    dataRotateZ = 0;

                    break;
                default:
            }
            transformObjY(dataRotateY, $(div),depth);

        });

        resizeContainer(containerSelector,height,width);
    }


    var piramid = function (containerSelector,height,width, divs) {
           // TODO - complain if the number of divs <> 4
           var depth = width/3.5;
           var dataRotateX = 0;
           var dataRotateY = 0;
           var dataRotateZ = 0;
           $.each(divs, function(i, div) {
               switch (i) {
                   case 0:
                       dataRotateX = 0;
                       dataRotateY = 0;
                       dataRotateZ = 0;
                       break;
                   case 1:
                       dataRotateX = 0;
                       dataRotateY = 120;
                       dataRotateZ = 0;
                       break;
                   case 2:
                       dataRotateX = 0;
                       dataRotateY = 240;
                       dataRotateZ = 0;
                       break;
                   default:
               }
               transformObjY(dataRotateY, $(div),depth);
           });
           resizeContainer(containerSelector,height,width);
       }




    var transformObj = function (axis, deg, obj,depth) {
        var rotation = "rotate" + axis + "(" + deg + "deg) " + 'translateZ(' + depth + 'px)';
        obj.css("transform", rotation);
        obj.css("-ms-transform", rotation);
        obj.css("-webkit-transform", rotation);

    }

    var transformObjY = function (deg, selectorY,depth) {
        transformObj("Y", deg, $(selectorY),depth);
    }

    var transform = function  (axis, deg, selector) {
        var rotation = "rotate" + axis + "(" + deg + "deg)";
        $(selector).css("transform", rotation);
        $(selector).css("-ms-transform", rotation);
        $(selector).css("-webkit-transform", rotation);

    }

    var rotate = function (selector,degreesRotation) {
        if (directionRight)
            rotateRight(selector,degreesRotation);
        else
            rotateLeft(selector,degreesRotation);
    }

    var transformY = function (selectorY, deg) {
        transform("Y", deg, selectorY);
        lastRotated = new Date();
    }

    var rotateRight = function (selectorY,degreesRotation) {
        var newRotY = currentYRot + degreesRotation;
        transformY(selectorY,newRotY);
        currentYRot = newRotY;
        directionRight = true;
    }

    var rotateLeft = function (selectorY,degreesRotation) {
        var newRotY = currentYRot - degreesRotation;
        transformY(selectorY, newRotY);
        currentYRot = newRotY;
        directionRight = false;
    }

    var dateDiffGreaterThan = function (now, before , millisecs) {
        var diff = now - before;
        return diff > millisecs;
    }

})(jQuery);




