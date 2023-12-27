/*!
 VG-Script by Tri Truong - 2014 | http://vuighe.net
 Special thanks:
   Bootstrap | http://getbootstrap.com/
   NotifyJS by Jaime Pillora - MIT | http://notifyjs.com/
   jQuery Simply Countable by Aaron Russell | http://github.com/aaronrussell/jquery-simply-countable/
*/
"use strict"; + function(a) {
    function b(b, d) {
        return this.each(function() {
            var e = a(this),
                f = e.data("bs.modal"),
                g = a.extend({}, c.DEFAULTS, e.data(), "object" == typeof b && b);
            f || e.data("bs.modal", f = new c(this, g)), "string" == typeof b ? f[b](d) : g.show && f.show(d)
        })
    }
    var c = function(b, c) {
        this.options = c, this.$body = a(document.body), this.$element = a(b), this.$backdrop = this.isShown = null, this.scrollbarWidth = 0, this.options.remote && this.$element.find(".modal-content").load(this.options.remote, a.proxy(function() {
            this.$element.trigger("loaded.bs.modal")
        }, this))
    };
    c.VERSION = "3.2.0", c.DEFAULTS = {
        backdrop: !0,
        keyboard: !0,
        show: !0
    }, c.prototype.toggle = function(a) {
        return this.isShown ? this.hide() : this.show(a)
    }, c.prototype.show = function(b) {
        var c = this,
            d = a.Event("show.bs.modal", {
                relatedTarget: b
            });
        this.$element.trigger(d), this.isShown || d.isDefaultPrevented() || (this.isShown = !0, this.checkScrollbar(), this.$body.addClass("modal-open"), this.setScrollbar(), this.escape(), this.$element.on("click.dismiss.bs.modal", '[data-dismiss="modal"]', a.proxy(this.hide, this)), this.backdrop(function() {
            var d = a.support.transition && c.$element.hasClass("fade");
            c.$element.parent().length || c.$element.appendTo(c.$body), c.$element.show().scrollTop(0), d && c.$element[0].offsetWidth, c.$element.addClass("in").attr("aria-hidden", !1), c.enforceFocus();
            var e = a.Event("shown.bs.modal", {
                relatedTarget: b
            });
            d ? c.$element.find(".modal-dialog").one("bsTransitionEnd", function() {
                c.$element.trigger("focus").trigger(e)
            }).emulateTransitionEnd(300) : c.$element.trigger("focus").trigger(e)
        }))
    }, c.prototype.hide = function(b) {
        b && b.preventDefault(), b = a.Event("hide.bs.modal"), this.$element.trigger(b), this.isShown && !b.isDefaultPrevented() && (this.isShown = !1, this.$body.removeClass("modal-open"), this.resetScrollbar(), this.escape(), a(document).off("focusin.bs.modal"), this.$element.removeClass("in").attr("aria-hidden", !0).off("click.dismiss.bs.modal"), a.support.transition && this.$element.hasClass("fade") ? this.$element.one("bsTransitionEnd", a.proxy(this.hideModal, this)).emulateTransitionEnd(300) : this.hideModal())
    }, c.prototype.enforceFocus = function() {
        a(document).off("focusin.bs.modal").on("focusin.bs.modal", a.proxy(function(a) {
            this.$element[0] === a.target || this.$element.has(a.target).length || this.$element.trigger("focus")
        }, this))
    }, c.prototype.escape = function() {
        this.isShown && this.options.keyboard ? this.$element.on("keyup.dismiss.bs.modal", a.proxy(function(a) {
            27 == a.which && this.hide()
        }, this)) : this.isShown || this.$element.off("keyup.dismiss.bs.modal")
    }, c.prototype.hideModal = function() {
        var a = this;
        this.$element.hide(), this.backdrop(function() {
            a.$element.trigger("hidden.bs.modal")
        })
    }, c.prototype.removeBackdrop = function() {
        this.$backdrop && this.$backdrop.remove(), this.$backdrop = null
    }, c.prototype.backdrop = function(b) {
        var c = this,
            d = this.$element.hasClass("fade") ? "fade" : "";
        if (this.isShown && this.options.backdrop) {
            var e = a.support.transition && d;
            if (this.$backdrop = a('<div class="modal-backdrop ' + d + '" />').appendTo(this.$body), this.$element.on("click.dismiss.bs.modal", a.proxy(function(a) {
                a.target === a.currentTarget && ("static" == this.options.backdrop ? this.$element[0].focus.call(this.$element[0]) : this.hide.call(this))
            }, this)), e && this.$backdrop[0].offsetWidth, this.$backdrop.addClass("in"), !b) return;
            e ? this.$backdrop.one("bsTransitionEnd", b).emulateTransitionEnd(150) : b()
        } else if (!this.isShown && this.$backdrop) {
            this.$backdrop.removeClass("in");
            var f = function() {
                c.removeBackdrop(), b && b()
            };
            a.support.transition && this.$element.hasClass("fade") ? this.$backdrop.one("bsTransitionEnd", f).emulateTransitionEnd(150) : f()
        } else b && b()
    }, c.prototype.checkScrollbar = function() {
        document.body.clientWidth >= window.innerWidth || (this.scrollbarWidth = this.scrollbarWidth || this.measureScrollbar())
    }, c.prototype.setScrollbar = function() {
        var a = parseInt(this.$body.css("padding-right") || 0, 10);
        this.scrollbarWidth && this.$body.css("padding-right", a + this.scrollbarWidth)
    }, c.prototype.resetScrollbar = function() {
        this.$body.css("padding-right", "")
    }, c.prototype.measureScrollbar = function() {
        var a = document.createElement("div");
        a.className = "modal-scrollbar-measure", this.$body.append(a);
        var b = a.offsetWidth - a.clientWidth;
        return this.$body[0].removeChild(a), b
    };
    var d = a.fn.modal;
    a.fn.modal = b, a.fn.modal.Constructor = c, a.fn.modal.noConflict = function() {
        return a.fn.modal = d, this
    }, a(document).on("click.bs.modal.data-api", '[data-toggle="modal"]', function(c) {
        var d = a(this),
            e = d.attr("href"),
            f = a(d.attr("data-target") || e && e.replace(/.*(?=#[^\s]+$)/, "")),
            g = f.data("bs.modal") ? "toggle" : a.extend({
                remote: !/#/.test(e) && e
            }, f.data(), d.data());
        d.is("a") && c.preventDefault(), f.one("show.bs.modal", function(a) {
            a.isDefaultPrevented() || f.one("hidden.bs.modal", function() {
                d.is(":visible") && d.trigger("focus")
            })
        }), b.call(f, g, this)
    })
}(jQuery);
var Notification, addStyle, blankFieldName, coreStyle, createElem, defaults, encode, find, findFields, getAnchorElement, getStyle, globalAnchors, hAligns, incr, inherit, insertCSS, mainPositions, opposites, parsePosition, pluginClassName, pluginName, pluginOptions, positions, realign, stylePrefixes, styles, vAligns, __indexOf = [].indexOf || function(a) {
    for (var b = 0, c = this.length; c > b; b++)
        if (b in this && this[b] === a) return b;
    return -1
};
pluginName = "notify", pluginClassName = pluginName + "js", blankFieldName = pluginName + "!blank", positions = {
        t: "top",
        m: "middle",
        b: "bottom",
        l: "left",
        c: "center",
        r: "right"
    }, hAligns = ["l", "c", "r"], vAligns = ["t", "m", "b"], mainPositions = ["t", "b", "l", "r"], opposites = {
        t: "b",
        m: null,
        b: "t",
        l: "r",
        c: null,
        r: "l"
    }, parsePosition = function(a) {
        var b;
        return b = [], $.each(a.split(/\W+/), function(a, c) {
            var d;
            return d = c.toLowerCase().charAt(0), positions[d] ? b.push(d) : void 0
        }), b
    }, styles = {}, coreStyle = {
        name: "core",
        html: '<div class="' + pluginClassName + '-wrapper">\n  <div class="' + pluginClassName + '-arrow"></div>\n  <div class="' + pluginClassName + '-container"></div>\n</div>',
        css: "." + pluginClassName + "-corner {\n  position: fixed;\n  width: 100%;\n  z-index: 1050;\n}\n\n." + pluginClassName + "-corner ." + pluginClassName + "-wrapper {\n  height: inherit;\n  width: inherit;\n  text-align: center;\n  display: block;\n  position: relative;\n  font-size: 0px;\n}\n\n." + pluginClassName + "-corner ." + pluginClassName + "-container {\n  display: inline-block;\n  position: relative;\n}\n\n." + pluginClassName + "-corner ." + pluginClassName + "-container .notifyjs-bootstrap-base {\n  font-size: 1.3rem;\n  font-weight: 600;\n}\n\n." + pluginClassName + "-wrapper {\n  z-index: 1;\n  position: absolute;\n  display: inline-block;\n  height: 0;\n  width: 0;\n}\n\n." + pluginClassName + "-container {\n  display: none;\n  z-index: 1;\n  position: absolute;\n}\n\n." + pluginClassName + "-hidable {\n  cursor: pointer;\n}\n\n[data-notify-text],[data-notify-html] {\n  position: relative;\n}\n\n." + pluginClassName + "-arrow {\n  position: absolute;\n  z-index: 2;\n  width: 0;\n  height: 0;\n}"
    }, stylePrefixes = {
        "border-radius": ["-webkit-", "-moz-"]
    }, getStyle = function(a) {
        return styles[a]
    }, addStyle = function(a, b) {
        var c, d, e, f;
        if (!a) throw "Missing Style name";
        if (!b) throw "Missing Style definition";
        if (!b.html) throw "Missing Style HTML";
        return (null != (f = styles[a]) ? f.cssElem : void 0) && (window.console && console.warn("" + pluginName + ": overwriting style '" + a + "'"), styles[a].cssElem.remove()), b.name = a, styles[a] = b, c = "", b.classes && $.each(b.classes, function(a, d) {
            return c += "." + pluginClassName + "-" + b.name + "-" + a + " {\n", $.each(d, function(a, b) {
                return stylePrefixes[a] && $.each(stylePrefixes[a], function(d, e) {
                    return c += "  " + e + a + ": " + b + ";\n"
                }), c += "  " + a + ": " + b + ";\n"
            }), c += "}\n"
        }), b.css && (c += "/* styles for " + b.name + " */\n" + b.css), c && (b.cssElem = insertCSS(c), b.cssElem.attr("id", "notify-" + b.name)), e = {}, d = $(b.html), findFields("html", d, e), findFields("text", d, e), b.fields = e
    }, insertCSS = function(a) {
        var b, c;
        c = createElem("style"), c.attr("type", "text/css"), $("head").append(c);
        try {
            c.html(a)
        } catch (d) {
            b = d, c[0].styleSheet.cssText = a
        }
        return c
    }, findFields = function(a, b, c) {
        var d;
        return "html" !== a && (a = "text"), d = "data-notify-" + a, find(b, "[" + d + "]").each(function() {
            var b;
            return b = $(this).attr(d), b || (b = blankFieldName), c[b] = a
        })
    }, find = function(a, b) {
        return a.is(b) ? a : a.find(b)
    }, pluginOptions = {
        clickToHide: !0,
        autoHide: !0,
        autoHideDelay: 5e3,
        arrowShow: !0,
        arrowSize: 5,
        breakNewLines: !0,
        elementPosition: "bottom",
        globalPosition: "top right",
        style: "bootstrap",
        className: "error",
        showAnimation: "slideDown",
        showDuration: 400,
        hideAnimation: "slideUp",
        hideDuration: 200,
        gap: 5
    }, inherit = function(a, b) {
        var c;
        return c = function() {}, c.prototype = a, $.extend(!0, new c, b)
    }, defaults = function(a) {
        return $.extend(pluginOptions, a)
    }, createElem = function(a) {
        return $("<" + a + "></" + a + ">")
    }, globalAnchors = {}, getAnchorElement = function(a) {
        var b;
        return a.is("[type=radio]") && (b = a.parents("form:first").find("[type=radio]").filter(function(b, c) {
            return $(c).attr("name") === a.attr("name")
        }), a = b.first()), a
    }, incr = function(a, b, c) {
        var d, e;
        if ("string" == typeof c) c = parseInt(c, 10);
        else if ("number" != typeof c) return;
        return isNaN(c) ? void 0 : (d = positions[opposites[b.charAt(0)]], e = b, void 0 !== a[d] && (b = positions[d.charAt(0)], c = -c), void 0 === a[b] ? a[b] = c : a[b] += c, null)
    }, realign = function(a, b, c) {
        if ("l" === a || "t" === a) return 0;
        if ("c" === a || "m" === a) return c / 2 - b / 2;
        if ("r" === a || "b" === a) return c - b;
        throw "Invalid alignment"
    }, encode = function(a) {
        return encode.e = encode.e || createElem("div"), encode.e.text(a).html()
    }, Notification = function() {
        function a(a, b, c) {
            "string" == typeof c && (c = {
                className: c
            }), this.options = inherit(pluginOptions, $.isPlainObject(c) ? c : {}), this.loadHTML(), this.wrapper = $(coreStyle.html), this.options.clickToHide && this.wrapper.addClass("" + pluginClassName + "-hidable"), this.wrapper.data(pluginClassName, this), this.arrow = this.wrapper.find("." + pluginClassName + "-arrow"), this.container = this.wrapper.find("." + pluginClassName + "-container"), this.container.append(this.userContainer), a && a.length && (this.elementType = a.attr("type"), this.originalElement = a, this.elem = getAnchorElement(a), this.elem.data(pluginClassName, this), this.elem.before(this.wrapper)), this.container.hide(), this.run(b)
        }
        return a.prototype.loadHTML = function() {
            var a;
            return a = this.getStyle(), this.userContainer = $(a.html), this.userFields = a.fields
        }, a.prototype.show = function(a, b) {
            var c, d, e, f, g;
            if (d = function(c) {
                return function() {
                    return a || c.elem || c.destroy(), b ? b() : void 0
                }
            }(this), g = this.container.parent().parents(":hidden").length > 0, e = this.container.add(this.arrow), c = [], g && a) f = "show";
            else if (g && !a) f = "hide";
            else if (!g && a) f = this.options.showAnimation, c.push(this.options.showDuration);
            else {
                if (g || a) return d();
                f = this.options.hideAnimation, c.push(this.options.hideDuration)
            }
            return c.push(d), e[f].apply(e, c)
        }, a.prototype.setGlobalPosition = function() {
            var a, b, c, d, e, f, g, h;
            return h = this.getPosition(), g = h[0], f = h[1], e = positions[g], a = positions[f], d = g + "|" + f, b = globalAnchors[d], b || (b = globalAnchors[d] = createElem("div"), c = {}, c[e] = 0, "middle" === a ? c.top = "45%" : "center" === a ? (c.top = "50px", c.left = "0px") : c[a] = 0, b.css(c).addClass("" + pluginClassName + "-corner"), $("body").append(b)), b.prepend(this.wrapper)
        }, a.prototype.setElementPosition = function() {
            var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C;
            for (w = this.getPosition(), t = w[0], r = w[1], s = w[2], k = this.elem.position(), h = this.elem.outerHeight(), l = this.elem.outerWidth(), i = this.elem.innerHeight(), j = this.elem.innerWidth(), x = this.wrapper.position(), e = this.container.height(), f = this.container.width(), n = positions[t], p = opposites[t], q = positions[p], g = {}, g[q] = "b" === t ? h : "r" === t ? l : 0, incr(g, "top", k.top - x.top), incr(g, "left", k.left - x.left), C = ["top", "left"], y = 0, A = C.length; A > y; y++) u = C[y], o = parseInt(this.elem.css("margin-" + u), 10), o && incr(g, u, o);
            if (m = Math.max(0, this.options.gap - (this.options.arrowShow ? c : 0)), incr(g, q, m), this.options.arrowShow) {
                for (c = this.options.arrowSize, b = $.extend({}, g), a = this.userContainer.css("border-color") || this.userContainer.css("background-color") || "white", z = 0, B = mainPositions.length; B > z; z++) u = mainPositions[z], v = positions[u], u !== p && (d = v === n ? a : "transparent", b["border-" + v] = "" + c + "px solid " + d);
                incr(g, positions[p], c), __indexOf.call(mainPositions, r) >= 0 && incr(b, positions[r], 2 * c)
            } else this.arrow.hide();
            return __indexOf.call(vAligns, t) >= 0 ? (incr(g, "left", realign(r, f, l)), b && incr(b, "left", realign(r, c, j))) : __indexOf.call(hAligns, t) >= 0 && (incr(g, "top", realign(r, e, h)), b && incr(b, "top", realign(r, c, i))), this.container.is(":visible") && (g.display = "block"), this.container.removeAttr("style").css(g), b ? this.arrow.removeAttr("style").css(b) : void 0
        }, a.prototype.getPosition = function() {
            var a, b, c, d, e, f, g, h;
            if (b = this.options.position || (this.elem ? this.options.elementPosition : this.options.globalPosition), a = parsePosition(b), 0 === a.length && (a[0] = "b"), c = a[0], __indexOf.call(mainPositions, c) < 0) throw "Must be one of [" + mainPositions + "]";
            return (1 === a.length || (d = a[0], __indexOf.call(vAligns, d) >= 0 && (e = a[1], __indexOf.call(hAligns, e) < 0)) || (f = a[0], __indexOf.call(hAligns, f) >= 0 && (g = a[1], __indexOf.call(vAligns, g) < 0))) && (a[1] = (h = a[0], __indexOf.call(hAligns, h) >= 0 ? "m" : "l")), 2 === a.length && (a[2] = a[1]), a
        }, a.prototype.getStyle = function(a) {
            var b;
            if (a || (a = this.options.style), a || (a = "default"), b = styles[a], !b) throw "Missing style: " + a;
            return b
        }, a.prototype.updateClasses = function() {
            var a, b;
            return a = ["base"], $.isArray(this.options.className) ? a = a.concat(this.options.className) : this.options.className && a.push(this.options.className), b = this.getStyle(), a = $.map(a, function(a) {
                return "" + pluginClassName + "-" + b.name + "-" + a
            }).join(" "), this.userContainer.attr("class", a)
        }, a.prototype.run = function(a, b) {
            var c, d, e, f, g;
            if ($.isPlainObject(b) ? $.extend(this.options, b) : "string" === $.type(b) && (this.options.className = b), this.container && !a) return void this.show(!1);
            if (this.container || a) {
                d = {}, $.isPlainObject(a) ? d = a : d[blankFieldName] = a;
                for (e in d) c = d[e], f = this.userFields[e], f && ("text" === f && (c = encode(c), this.options.breakNewLines && (c = c.replace(/\n/g, "<br/>"))), g = e === blankFieldName ? "" : "=" + e, find(this.userContainer, "[data-notify-" + f + g + "]").html(c));
                return this.updateClasses(), this.elem ? this.setElementPosition() : this.setGlobalPosition(), this.show(!0), this.options.autoHide ? (clearTimeout(this.autohideTimer), this.autohideTimer = setTimeout(function(a) {
                    return function() {
                        return a.show(!1)
                    }
                }(this), this.options.autoHideDelay)) : void 0
            }
        }, a.prototype.destroy = function() {
            return this.wrapper.remove()
        }, a
    }(), $[pluginName] = function(a, b, c) {
        return a && a.nodeName || a.jquery ? $(a)[pluginName](b, c) : (c = b, b = a, new Notification(null, b, c)), a
    }, $.fn[pluginName] = function(a, b) {
        return $(this).each(function() {
            var c;
            return c = getAnchorElement($(this)).data(pluginClassName), c ? c.run(a, b) : new Notification($(this), a, b)
        }), this
    }, $.extend($[pluginName], {
        defaults: defaults,
        addStyle: addStyle,
        pluginOptions: pluginOptions,
        getStyle: getStyle,
        insertCSS: insertCSS
    }), $(function() {
        return insertCSS(coreStyle.css).attr("id", "core-notify"), $(document).on("click", "." + pluginClassName + "-hidable", function() {
            return $(this).trigger("notify-hide")
        }), $(document).on("notify-hide", "." + pluginClassName + "-wrapper", function() {
            var a;
            return null != (a = $(this).data(pluginClassName)) ? a.show(!1) : void 0
        })
    }), $.notify.addStyle("bootstrap", {
        html: "<div>\n<span data-notify-text></span>\n</div>",
        classes: {
            base: {
                "font-weight": "bold",
                padding: "8px 15px 8px 14px",
                "text-shadow": "0 1px 0 rgba(255, 255, 255, 0.5)",
                "background-color": "#fcf8e3",
                border: "1px solid #fbeed5",
                "border-radius": "4px",
                "white-space": "nowrap",
                "padding-left": "25px",
                "background-repeat": "no-repeat",
                "background-position": "3px 7px"
            },
            error: {
                color: "#B94A48",
                "background-color": "#F2DEDE",
                "border-color": "#EED3D7",
                "background-image": "url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAtRJREFUeNqkVc1u00AQHq+dOD+0poIQfkIjalW0SEGqRMuRnHos3DjwAH0ArlyQeANOOSMeAA5VjyBxKBQhgSpVUKKQNGloFdw4cWw2jtfMOna6JOUArDTazXi/b3dm55socPqQhFka++aHBsI8GsopRJERNFlY88FCEk9Yiwf8RhgRyaHFQpPHCDmZG5oX2ui2yilkcTT1AcDsbYC1NMAyOi7zTX2Agx7A9luAl88BauiiQ/cJaZQfIpAlngDcvZZMrl8vFPK5+XktrWlx3/ehZ5r9+t6e+WVnp1pxnNIjgBe4/6dAysQc8dsmHwPcW9C0h3fW1hans1ltwJhy0GxK7XZbUlMp5Ww2eyan6+ft/f2FAqXGK4CvQk5HueFz7D6GOZtIrK+srupdx1GRBBqNBtzc2AiMr7nPplRdKhb1q6q6zjFhrklEFOUutoQ50xcX86ZlqaZpQrfbBdu2R6/G19zX6XSgh6RX5ubyHCM8nqSID6ICrGiZjGYYxojEsiw4PDwMSL5VKsC8Yf4VRYFzMzMaxwjlJSlCyAQ9l0CW44PBADzXhe7xMdi9HtTrdYjFYkDQL0cn4Xdq2/EAE+InCnvADTf2eah4Sx9vExQjkqXT6aAERICMewd/UAp/IeYANM2joxt+q5VI+ieq2i0Wg3l6DNzHwTERPgo1ko7XBXj3vdlsT2F+UuhIhYkp7u7CarkcrFOCtR3H5JiwbAIeImjT/YQKKBtGjRFCU5IUgFRe7fF4cCNVIPMYo3VKqxwjyNAXNepuopyqnld602qVsfRpEkkz+GFL1wPj6ySXBpJtWVa5xlhpcyhBNwpZHmtX8AGgfIExo0ZpzkWVTBGiXCSEaHh62/PoR0p/vHaczxXGnj4bSo+G78lELU80h1uogBwWLf5YlsPmgDEd4M236xjm+8nm4IuE/9u+/PH2JXZfbwz4zw1WbO+SQPpXfwG/BBgAhCNZiSb/pOQAAAAASUVORK5CYII=)"
            },
            success: {
                color: "#468847",
                "background-color": "#DFF0D8",
                "border-color": "#D6E9C6",
                "background-image": "url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAutJREFUeNq0lctPE0Ecx38zu/RFS1EryqtgJFA08YCiMZIAQQ4eRG8eDGdPJiYeTIwHTfwPiAcvXIwXLwoXPaDxkWgQ6islKlJLSQWLUraPLTv7Gme32zoF9KSTfLO7v53vZ3d/M7/fIth+IO6INt2jjoA7bjHCJoAlzCRw59YwHYjBnfMPqAKWQYKjGkfCJqAF0xwZjipQtA3MxeSG87VhOOYegVrUCy7UZM9S6TLIdAamySTclZdYhFhRHloGYg7mgZv1Zzztvgud7V1tbQ2twYA34LJmF4p5dXF1KTufnE+SxeJtuCZNsLDCQU0+RyKTF27Unw101l8e6hns3u0PBalORVVVkcaEKBJDgV3+cGM4tKKmI+ohlIGnygKX00rSBfszz/n2uXv81wd6+rt1orsZCHRdr1Imk2F2Kob3hutSxW8thsd8AXNaln9D7CTfA6O+0UgkMuwVvEFFUbbAcrkcTA8+AtOk8E6KiQiDmMFSDqZItAzEVQviRkdDdaFgPp8HSZKAEAL5Qh7Sq2lIJBJwv2scUqkUnKoZgNhcDKhKg5aH+1IkcouCAdFGAQsuWZYhOjwFHQ96oagWgRoUov1T9kRBEODAwxM2QtEUl+Wp+Ln9VRo6BcMw4ErHRYjH4/B26AlQoQQTRdHWwcd9AH57+UAXddvDD37DmrBBV34WfqiXPl61g+vr6xA9zsGeM9gOdsNXkgpEtTwVvwOklXLKm6+/p5ezwk4B+j6droBs2CsGa/gNs6RIxazl4Tc25mpTgw/apPR1LYlNRFAzgsOxkyXYLIM1V8NMwyAkJSctD1eGVKiq5wWjSPdjmeTkiKvVW4f2YPHWl3GAVq6ymcyCTgovM3FzyRiDe2TaKcEKsLpJvNHjZgPNqEtyi6mZIm4SRFyLMUsONSSdkPeFtY1n0mczoY3BHTLhwPRy9/lzcziCw9ACI+yql0VLzcGAZbYSM5CCSZg1/9oc/nn7+i8N9p/8An4JMADxhH+xHfuiKwAAAABJRU5ErkJggg==)"
            },
            info: {
                color: "#3A87AD",
                "background-color": "#D9EDF7",
                "border-color": "#BCE8F1",
                "background-image": "url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3QYFAhkSsdes/QAAA8dJREFUOMvVlGtMW2UYx//POaWHXg6lLaW0ypAtw1UCgbniNOLcVOLmAjHZolOYlxmTGXVZdAnRfXQm+7SoU4mXaOaiZsEpC9FkiQs6Z6bdCnNYruM6KNBw6YWewzl9z+sHImEWv+vz7XmT95f/+3/+7wP814v+efDOV3/SoX3lHAA+6ODeUFfMfjOWMADgdk+eEKz0pF7aQdMAcOKLLjrcVMVX3xdWN29/GhYP7SvnP0cWfS8caSkfHZsPE9Fgnt02JNutQ0QYHB2dDz9/pKX8QjjuO9xUxd/66HdxTeCHZ3rojQObGQBcuNjfplkD3b19Y/6MrimSaKgSMmpGU5WevmE/swa6Oy73tQHA0Rdr2Mmv/6A1n9w9suQ7097Z9lM4FlTgTDrzZTu4StXVfpiI48rVcUDM5cmEksrFnHxfpTtU/3BFQzCQF/2bYVoNbH7zmItbSoMj40JSzmMyX5qDvriA7QdrIIpA+3cdsMpu0nXI8cV0MtKXCPZev+gCEM1S2NHPvWfP/hL+7FSr3+0p5RBEyhEN5JCKYr8XnASMT0xBNyzQGQeI8fjsGD39RMPk7se2bd5ZtTyoFYXftF6y37gx7NeUtJJOTFlAHDZLDuILU3j3+H5oOrD3yWbIztugaAzgnBKJuBLpGfQrS8wO4FZgV+c1IxaLgWVU0tMLEETCos4xMzEIv9cJXQcyagIwigDGwJgOAtHAwAhisQUjy0ORGERiELgG4iakkzo4MYAxcM5hAMi1WWG1yYCJIcMUaBkVRLdGeSU2995TLWzcUAzONJ7J6FBVBYIggMzmFbvdBV44Corg8vjhzC+EJEl8U1kJtgYrhCzgc/vvTwXKSib1paRFVRVORDAJAsw5FuTaJEhWM2SHB3mOAlhkNxwuLzeJsGwqWzf5TFNdKgtY5qHp6ZFf67Y/sAVadCaVY5YACDDb3Oi4NIjLnWMw2QthCBIsVhsUTU9tvXsjeq9+X1d75/KEs4LNOfcdf/+HthMnvwxOD0wmHaXr7ZItn2wuH2SnBzbZAbPJwpPx+VQuzcm7dgRCB57a1uBzUDRL4bfnI0RE0eaXd9W89mpjqHZnUI5Hh2l2dkZZUhOqpi2qSmpOmZ64Tuu9qlz/SEXo6MEHa3wOip46F1n7633eekV8ds8Wxjn37Wl63VVa+ej5oeEZ/82ZBETJjpJ1Rbij2D3Z/1trXUvLsblCK0XfOx0SX2kMsn9dX+d+7Kf6h8o4AIykuffjT8L20LU+w4AZd5VvEPY+XpWqLV327HR7DzXuDnD8r+ovkBehJ8i+y8YAAAAASUVORK5CYII=)"
            },
            warn: {
                color: "#C09853",
                "background-color": "#FCF8E3",
                "border-color": "#FBEED5",
                "background-image": "url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAABJlBMVEXr6eb/2oD/wi7/xjr/0mP/ykf/tQD/vBj/3o7/uQ//vyL/twebhgD/4pzX1K3z8e349vK6tHCilCWbiQymn0jGworr6dXQza3HxcKkn1vWvV/5uRfk4dXZ1bD18+/52YebiAmyr5S9mhCzrWq5t6ufjRH54aLs0oS+qD751XqPhAybhwXsujG3sm+Zk0PTwG6Shg+PhhObhwOPgQL4zV2nlyrf27uLfgCPhRHu7OmLgAafkyiWkD3l49ibiAfTs0C+lgCniwD4sgDJxqOilzDWowWFfAH08uebig6qpFHBvH/aw26FfQTQzsvy8OyEfz20r3jAvaKbhgG9q0nc2LbZxXanoUu/u5WSggCtp1anpJKdmFz/zlX/1nGJiYmuq5Dx7+sAAADoPUZSAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfdBgUBGhh4aah5AAAAlklEQVQY02NgoBIIE8EUcwn1FkIXM1Tj5dDUQhPU502Mi7XXQxGz5uVIjGOJUUUW81HnYEyMi2HVcUOICQZzMMYmxrEyMylJwgUt5BljWRLjmJm4pI1hYp5SQLGYxDgmLnZOVxuooClIDKgXKMbN5ggV1ACLJcaBxNgcoiGCBiZwdWxOETBDrTyEFey0jYJ4eHjMGWgEAIpRFRCUt08qAAAAAElFTkSuQmCC)"
            }
        }
    }),
    function(a) {
        a.fn.simplyCountable = function(b) {
            b = a.extend({
                counter: "#counter",
                countType: "characters",
                maxCount: 140,
                strictMax: !1,
                countDirection: "down",
                safeClass: "safe",
                overClass: "over",
                thousandSeparator: ",",
                onOverCount: function() {},
                onSafeCount: function() {},
                onMaxCount: function() {}
            }, b);
            var c = [33, 34, 35, 36, 37, 38, 39, 40];
            return a(this).each(function() {
                var d = a(this),
                    e = a(b.counter);
                if (!e.length) return !1;
                var f = function() {
                    var c, f, g = function() {
                            return "up" === b.countDirection ? f : c
                        },
                        h = function(a) {
                            d.val(a).trigger("change")
                        };
                    if ("words" === b.countType ? (c = b.maxCount - a.trim(d.val()).split(/\s+/).length, "" === d.val() && (c += 1)) : c = b.maxCount - d.val().length, f = c - 2 * c + b.maxCount, b.strictMax && 0 >= c) {
                        var i = d.val();
                        0 > c && b.onMaxCount(g(), d, e), "words" === b.countType ? (i = i.match(new RegExp("\\s?(\\S+\\s+){" + b.maxCount + "}"))) && h(i[0]) : h(i.substring(0, b.maxCount)), c = 0, f = b.maxCount
                    }
                    e.text(function(a) {
                        var c = "";
                        if (b.thousandSeparator) {
                            a = a.toString(), a.match(/^-/) && (a = a.substr(1), c = "-");
                            for (var d = a.length - 3; d > 0; d -= 3) a = a.substr(0, d) + b.thousandSeparator + a.substr(d)
                        }
                        return c + a
                    }(g())), e.hasClass(b.safeClass) || e.hasClass(b.overClass) ? 0 > c && e.hasClass(b.safeClass) ? (e.removeClass(b.safeClass).addClass(b.overClass), b.onOverCount(g(), d, e)) : c >= 0 && e.hasClass(b.overClass) && (e.removeClass(b.overClass).addClass(b.safeClass), b.onSafeCount(g(), d, e)) : e.addClass(0 > c ? b.overClass : b.safeClass)
                };
                f(), d.on("keyup blur paste", function(b) {
                    switch (b.type) {
                        case "keyup":
                            0 > a.inArray(b.which, c) && f();
                            break;
                        case "paste":
                            setTimeout(f, "paste" === b.type ? 5 : 0);
                            break;
                        default:
                            f()
                    }
                })
            })
        }
    }(jQuery),
    function() {
        var a, b, c, d;
        b = a = d = c = null, d = function(b) {
                var c;
                return c = function() {
                    this.h()
                }, c.prototype.$a = window.globUser.isLoggedIn, c.prototype.ka = window.globUser.avatar, c.prototype.oa = window.globUser.displayName, c.prototype.url = window.globUser.url, c.prototype.fb = "loginModal", c.prototype.gb = "NavLogoutLink", c.prototype.h = function() {
                    var a;
                    a = this, this.Ca = b("#" + this.fb), this.wa(), b(document).on("click", "#" + this.gb, function(b) {
                        b.preventDefault(), a.Tb()
                    }), this.Ca.find('form[role="login-modal-form"]').submit(function(c) {
                        c.preventDefault(), a.Sb(b(this))
                    })
                }, c.prototype.wa = function() {
                    var a, c, d;
                    a = b("#NavbarLogin"), c = '<a href="#" data-toggle="modal" data-target="#' + this.fb + '">ÄÄƒng nháº­p</a>', d = '<a href="#" id="' + this.gb + '">ÄÄƒng xuáº¥t</a>', a.html(!0 === this.Sa() ? d : c)
                }, c.prototype.mb = function(a) {
                    this.$a = a
                }, c.prototype.Sa = function() {
                    return this.$a || !1
                }, c.prototype.Sb = function(c) {
                    var e, f;
                    f = this, e = a.Qa(c), e.type = "login", b.ajax({
                        url: "/ajax/login",
                        type: "post",
                        data: e,
                        cache: !1,
                        success: function(a) {
                            var e, g;
                            if (!0 === a.isLoggedIn) {
                                f.ka = a.avatar, f.oa = a.displayName, f.mb(!0), f.wa(), c.find(".message").slideUp();
                                try {
                                    g = b("#comments form.new-comment"), e = g.find(".avatar img"), e.attr("src", d.ka)
                                } catch (h) {}
                                b.notify("ÄÄƒng nháº­p thÃ nh cÃ´ng", "success"), setTimeout(function() {
                                    return f.Ca.modal("hide")
                                }, 1500)
                            } else c.find(".message").slideDown()
                        }
                    })
                }, c.prototype.Tb = function() {
                    var a;
                    a = this, b.ajax({
                        url: "/ajax/logout",
                        type: "post",
                        data: null,
                        cache: !1,
                        success: function(c) {
                            if (!0 === c.status) {
                                b.notify("ÄÄƒng xuáº¥t thÃ nh cÃ´ng.", {
                                    className: "success",
                                    autoHideDelay: 1e3
                                }), a.mb(!1), a.wa();
                                try {
                                    b("#comments form.new-comment").find(".avatar img").attr("src", "/img/avatar/no-avatar.jpg")
                                } catch (d) {}
                            } else b.notify("ÄÄƒng xuáº¥t tháº¥t báº¡i.", {
                                autoHideDelay: 1e3
                            })
                        }
                    })
                }, new c
            }(jQuery), Number.prototype.format = function(a, b) {
                var c;
                return c = "\\d(?=(\\d{" + (b || 3) + "})+" + (a > 0 ? "\\." : "$") + ")", this.toFixed(Math.max(0, ~~a)).replace(new RegExp(c, "g"), "$&,")
            }, String.prototype.replaceAll = function(a, b) {
                return this.split(a).join(b)
            }, a = function(a) {
                var b;
                return b = function() {
                    this.isFrozen = !1
                }, b.prototype.$body = a(document.body), b.prototype.Da = a("#vg-navbar"), b.prototype.scrollbarWidth = 0, b.prototype.backdrop = null, b.prototype.ec = function() {
                    var b = $("#top-search-box input[name='q']").val();
                    return a.trim(b.replace(RegExp(" +(?= )", "g"), ""))
                }, b.prototype.Eb = function(a) {
                    return a.replace(/\s+/g, " ").replace(/(\r\n|\n|\r)/gm, " ").split(" ").length
                }, b.prototype.checkScrollbar = function() {
                    0 === this.scrollbarWidth || document.body.clientWidth >= window.innerWidth || (this.scrollbarWidth = this.scrollbarWidth || this.measureScrollbar())
                }, b.prototype.measureScrollbar = function() {
                    var a, b;
                    return a = document.createElement("div"), a.className = "modal-scrollbar-measure", this.$body.append(a), b = a.offsetWidth - a.clientWidth, this.$body[0].removeChild(a), b
                }, b.prototype.Hb = function() {
                    var b, c;
                    this.isFrozen || (b = !0, c = this, this.checkScrollbar(), this.setScrollbar(), this.$body.addClass("modal-open"), this.$backdrop = a('<div class="modal-backdrop in loading" />'), this.$body.append(this.$backdrop), this.isFrozen = !0, b && setTimeout(function() {
                        return c.Aa()
                    }, 6e3), setTimeout(function() {
                        return c.isFrozen ? a.notify("Äang xá»­ lÃ­...") : void 0
                    }, 4e3))
                }, b.prototype.Aa = function() {
                    return this.isFrozen ? (this.resetScrollbar(), this.$body.removeClass("modal-open"), this.$backdrop.remove(), void(this.isFrozen = !1)) : !1
                }, b.prototype.setScrollbar = function() {
                    var a;
                    a = parseInt(this.$body.css("padding-right") || 0), this.scrollbarWidth && (this.$body.css("padding-right", a + this.scrollbarWidth), this.Da.css("margin-right", this.scrollbarWidth))
                }, b.prototype.resetScrollbar = function() {
                    this.$body.css("padding-right", ""), this.Da.css("margin-right", "")
                }, b.prototype.la = function() {
                    return !1 === d.Sa() ? (a("#loginModal").modal("show"), !1) : !0
                }, b.prototype.Qa = function(b) {
                    var c;
                    return b = b.serializeArray(), c = {}, a.each(b, function(a, b) {
                        c[b.name] = b.value
                    }), c
                }, b.prototype.lb = function(a, b) {
                    var c;
                    c = new Date, c.setTime(c.getTime() + 1728e5), document.cookie = a + "=" + b + "; expires=" + c.toGMTString()
                }, b.prototype.Pa = function(a) {
                    var b, c, d;
                    for (d = a + "=", b = document.cookie.split(";"), c = 0; c < b.length;) {
                        if (a = b[c].trim(), 0 === a.indexOf(d)) return a.substring(d.length, a.length);
                        c++
                    }
                    return null
                }, b.prototype.aa = function() {
                    return (new Date).getTime()
                }, new b
            }(jQuery), jQuery(document).ready(function(a) {
                var b, c, d, e, f, g, h;
                a.notify.defaults({
                    autoHideDelay: 6e3,
                    globalPosition: "top center"
                }), a(".more-less a.more").click(function() {
                    return a(this).parents(".summary").hide(), a(this).parents(".more-less").children(".details").show(), !1
                }), a(".more-less a.less").click(function() {
                    return a(this).parents(".details").hide(), a(this).parents(".more-less").children(".summary").show(), a(this).hasClass("bottom") && a("html, body").animate({
                        scrollTop: a("#film-information").offset().top - 50
                    }, 200), !1
                }), d = a("#vg-navbar"), b = d.find(".main-menu"), h = a("#top-fluid-div").height(), e = d.height(), 5 > h - e ? d.addClass("active") : (c = a("#player"), g = function() {
                    return a(window).scrollTop() > h - e ? d.addClass("active") : d.removeClass("active")
                }, c.length ? (f = c.height(), a(window).scroll(function() {
                    var b;
                    g(), b = c.offset().top + f, a(this).scrollTop() < b ? d.css("position", "absolute") : (d.removeAttr("style"), d.fadeIn())
                })) : a(window).scroll(function() {
                    return g()
                })), d.find(".hamburger").click(function() {
                    b.toggleClass("down")
                })
            }), b = function(a) {
                var c, d;
                return c = function(a) {
                    this.a = a.find(".tray"), this.L = this.a.find(".mask"), this.d = this.a.find(".inside"), this.r = this.a.find(".tray-filter"), this.r.length && (this.ha = {
                        type: this.r.attr("data-filter-type").trim(),
                        La: this.r.attr("data-default-value").trim()
                    }, this.tb = this.r.find(".current-selection"), this.xb()), this.j = !1, this.C = this.a.attr("data-tray-type").trim(), this.c = {
                        Ob: this.Jb(),
                        ua: !1,
                        za: !1,
                        G: !1,
                        bb: !1
                    }, this.ga = this.Mb(), this.b = parseInt(this.a.attr("data-loaded-item")) || -1, this.B = parseInt(this.a.attr("data-total-item")) || this.b, "e" === this.C && 3 === this.ga && (this.B = ++this.b), this.L.length && (this.Ea = this.L.siblings(".arrow-right"), this.ia = this.L.siblings(".arrow-left"), this.A = parseInt(this.a.attr("data-row-number")) || -1, this.u = 1 === this.d.find(".subtray:eq(0)").find(".pinned").length, this.e = 0, this.fa = this.Ua(this.B, this.A, this.u))
                }, c.prototype.xb = function() {
                    var c, d;
                    d = this, this.r.length && (c = function() {
                        var c;
                        if (c = this.getAttribute("data-value").trim(), c === d.ha.La) return !1;
                        switch (d.ha.La = c, d.tb.html(a(this).text()), d.r.find(".selected").removeClass("selected"), a(this).addClass("selected"), d.ha.type) {
                            case "rank":
                                d.c.ua = c;
                                break;
                            case "genre":
                                d.c.G = "ALL" === c ? !1 : c;
                                break;
                            case "country":
                                d.c.ma = "ALL" === c ? !1 : c
                        }
                        return "object" != typeof b ? !1 : (d.b = -1, "rank" !== d.ha.type && a.ajax({
                            url: d.O(!0),
                            type: "GET",
                            data: d.N(!0),
                            cache: !0,
                            success: function(a) {
                                return d.fc(parseInt(a.total))
                            }
                        }), a.ajax({
                            url: d.O(),
                            type: "GET",
                            data: d.N({
                                limit: d.u && 0 === b.Q % 2 ? b.Q - 1 : b.Q
                            }),
                            cache: !0,
                            success: function(a) {
                                var c, e, f;
                                switch (d.e = 0, d.b = c = a.items.length, e = "", d.A) {
                                    case 1:
                                        for (f = 0; c > f;) e += b.Ta(a.items[f], a.itemType), f += d.A;
                                        break;
                                    case 2:
                                        for (f = 0, d.u && (a.items[0].isPinned = !0, d.qa && (a.items[0].rankNo = 1), e += b.Ta(a.items[0], a.itemType), delete a.items[0], f = 1); c > f;) {
                                            if (d.qa) try {
                                                a.items[f].rankNo = f + 1, a.items[f + 1].rankNo = f + 2
                                            } catch (g) {}
                                            e += b.Nb(a.items[f], a.items[f + 1], a.itemType), f += d.A
                                        }
                                }
                                return d.d.html(""), d.d.css("margin-left", "0px"), d.d.html(e), d.v()
                            }
                        }))
                    }, this.r.on("click", "a", function(a) {
                        a.preventDefault()
                    }), this.r.on("click", ".filter-option", c))
                }, c.prototype.fc = function(a) {
                    return this.B = a, this.fa = this.Ua(a, this.A, this.u)
                }, c.prototype.Ua = function(a, b, c) {
                    return 1 === b ? a : c ? (a--, Math.ceil(a / 2) + 1) : Math.ceil(a / 2)
                }, c.prototype.Jb = function() {
                    return this.a.hasClass("v-rect") ? 2 : this.a.hasClass("square") ? 3 : 4
                }, c.prototype.Mb = function() {
                    return "e" === this.C ? Boolean(this.a.attr("data-recently-updated")) ? 1 : Boolean(this.a.attr("data-film-eplist")) ? 3 : (this.c.P = a("#player").attr("data-film-slug").trim(), 2) : "f" === this.C ? (this.a.attr("data-type-slug") && (this.c.za = this.a.attr("data-type-slug").trim(), this.a.attr("data-genre-slug") && (this.c.G = this.a.attr("data-genre-slug").trim())), Boolean(this.a.attr("data-rank")) ? (this.c.ua = "day-views", this.qa = !0) : this.qa = !1, this.a.attr("data-country-slug") && (this.c.ma = this.a.attr("data-country-slug").trim()), null) : "v" === this.C ? this.a.attr("data-genre-slug") ? (this.c.G = this.a.attr("data-genre-slug").trim(), 2) : 1 : "s" === this.C ? (this.c.bb = this.a.attr("data-keyword").trim(), null) : void 0
                }, c.prototype.O = function(a) {
                    switch (this.C) {
                        case "e":
                            switch (this.ga) {
                                case 1:
                                    return "/api/episode/getRecentlyUpdatedEps";
                                case 2:
                                    return "/api/film/getEplistByRange"
                            }
                            break;
                        case "f":
                            return a ? "/api/film/countFilms" : "/api/film/getFilms";
                        case "v":
                            return "/api/video/getRecentlyUpdatedVideos";
                        case "s":
                            return "/api/film/search"
                    }
                }, c.prototype.N = function(a) {
                    var b;
                    switch (a = a || {}, b = {}, void 0 !== typeof a.limit && (b.limit = a.limit), void 0 !== typeof a.rangeNo && (b.range = a.rangeNo), this.C) {
                        case "e":
                            switch (this.ga) {
                                case 1:
                                    b.startIndex = this.Z();
                                    break;
                                case 2:
                                    b.filmSlug = this.c.P
                            }
                            break;
                        case "f":
                            a.isCount || (b.imageSize = this.c.Ob, b.startIndex = this.Z(), b.orderBy = this.c.ua || "newest"), this.c.za && (b.typeSlug = this.c.za, this.c.G && (b.genreSlug = this.c.G)), this.c.ma && (b.countrySlug = this.c.ma);
                            break;
                        case "v":
                            b.startIndex = this.Z(), 2 === this.ga && (b.genreSlug = this.c.G);
                            break;
                        case "s":
                            b.startIndex = this.Z(), b.keyword = this.c.bb
                    }
                    return b
                }, c.prototype.Z = function() {
                    return this.b + 1
                }, c.prototype.Va = function() {
                    return this.B - this.b
                }, c.prototype.freeze = function() {
                    return this.a.parents(".tray-wrapper").addClass("disabled"), this.a.css("opacity", .4)
                }, c.prototype.pb = function() {
                    return this.a.parents(".tray-wrapper").removeClass("disabled"), this.a.css("opacity", 1)
                }, c.prototype.lock = function() {
                    return this.j = !0, this.freeze()
                }, c.prototype.qb = function() {
                    this.j = !1, this.pb()
                }, c.prototype.v = function() {
                    var a;
                    a = b.f, this.L.length && (0 === this.e && this.u && a--, a = this.fa - (this.e + a), a > 0 ? this.Ea.fadeIn() : this.Ea.hide(), 0 !== this.e ? this.ia.show() : this.ia.hide())
                }, d = function() {
                    this.J = {}, this.Pb(), this.vb(), this.h()
                }, d.prototype.ta = new function() {
                    this.width = 0
                }, d.prototype.nb = new function() {
                    this.width = 0
                }, d.prototype.R = new function() {
                    this.sa = null, this.width = 0
                }, d.prototype.X = 5, d.prototype.f = null, d.prototype.ca = "infinite_tray", d.prototype.Na = "block-film-list-eps", d.prototype.Q = 16, d.prototype.vb = function() {
                    var b;
                    b = this, a("#" + this.ca).length && a(window).scroll(function() {
                        b.Gb()
                    }), a(".tray-wrapper").find(".arrow-left").click(function() {
                        b.Cb(a(this).attr("data-target-id"))
                    }), a(".tray-wrapper").find(".arrow-right").click(function() {
                        var c, d, e, f;
                        d = function(a) {
                            b.Db(a.attr("data-target-id"))
                        }, f = a(this).parents(".tray-wrapper"), c = f.find(".ads"), c.length && "block" === c.css("display") ? (c.fadeOut(200), e = f.find(".mask"), window.setTimeout(function() {
                            e.removeClass(function(a, b) {
                                return (b.match(/\bpush_ads\S+/g) || []).join(" ")
                            })
                        }, 200)) : d(a(this))
                    }), window.onresize = function() {
                        b.h()
                    }
                }, d.prototype.Pb = function() {
                    var b;
                    b = this, a(".tray-wrapper").each(function() {
                        var d;
                        return a(this).find("#" + b.ca).length ? (b.J[b.ca] = new c(a(this)), !1) : (d = a(this).find(".mask"), d.length ? b.J[d.attr("id").trim()] = new c(a(this)) : void 0)
                    })
                }, d.prototype.h = function() {
                    var b, c, d, e;
                    e = a('<div class="js-meter"> <div class="tray-wrapper"> <div class="container tray" id="tray-for-metering"> <div class="row mask-wrapper"> <div class="mask"> <div class="inside horizontal"> <div class="subtray"> <div class="thumbnail"> <a href="#"> <img src="" /> </a> </div> </div> </div> </div> </div> </div> </div> </div>'), b = e.find(".mask"), c = b.find(".subtray"), d = c.find(".thumbnail"), a("body").append(e[0]), this.ta.width = b.width(), this.nb.width = c.width(), this.R.sa = parseInt(c.find(".thumbnail").css("margin-right")), this.R.width = d.outerWidth(), e.remove(), this.Ub(), this.v()
                }, d.prototype.v = function() {
                    var a;
                    a = this, window.setTimeout(function() {
                        var b, c, d;
                        try {
                            for (b in d = a.J) c = d[b], c.v(a.f)
                        } catch (e) {}
                    }, 700)
                }, d.prototype.Ra = function(a, b) {
                    return b = b || 0, a.last().position().left + this.R.width + b - this.X
                }, d.prototype.Ub = function() {
                    var a;
                    if (!isNaN(this.R.sa))
                        for (this.f = 0, a = -this.R.sa - this.X; a += this.nb.width, !(a > this.ta.width);) this.f++
                }, d.prototype.pa = function(a) {
                    return this.J["" + a]
                }, d.prototype.Cb = function(a) {
                    var b, c, d, e;
                    if (d = this.pa("block-film-" + a), !d.d.is(":animated") && !d.j) {
                        for (d.j = !0, a = b = d.d.find(".subtray:eq( " + d.e + " )"), c = this.f, 0 === d.e - c && d.u && c--, e = 1; c >= 1 ? c >= e : e >= c; c >= 1 ? ++e : --e) 0 < d.e && (a = a.prev(), d.e--);
                        0 === d.e && d.ia.fadeOut(), b = b.offset().left, a = a.offset().left, a = (parseInt(d.d.css("margin-left")) || 0) - (a - b), d.d.animate({
                            marginLeft: a
                        }, {
                            complete: function() {
                                return d.j = !1
                            }
                        }), d.v(this.f)
                    }
                }, d.prototype.Db = function(b) {
                    var c, d, e, f, g, h, i, j, k, l;
                    if (h = this.pa("block-film-" + b), !h.d.is(":animated") && !h.j) {
                        if (i = this, h.j = !0, b = h.d.find(".subtray:eq( " + h.e + " )"), e = function(a, b, c, d) {
                            var e, f;
                            if (e = c.fa - (c.e + d), e < i.f) {
                                for (e = i.f - e, f = 1; e >= 1 ? e >= f : f >= e; e >= 1 ? ++f : --f) b = b.prev();
                                d -= e
                            }
                            return a = a.offset().left, b = b.offset().left, b = (parseInt(c.d.css("margin-left")) || 0) - (b - a), c.d.animate({
                                marginLeft: b
                            }, {
                                complete: function() {
                                    return c.j = !1
                                }
                            }), c.e += d, c.v(i.f)
                        }, g = function(b, c, d) {
                            var g, h;
                            b.freeze(), g = {}, h = b.Va(), h < i.Q && (g.limit = h), a.ajax({
                                url: b.O(),
                                type: "GET",
                                data: b.N(g),
                                success: function(a) {
                                    var g, h, j, k;
                                    for (h = a.items.length, b.b += h, j = "", k = 0; h > k;) j = 1 === b.A ? j + ('<div class="subtray"> ' + i.s(a.items[k], a.itemType) + " </div>") : j + ('<div class="subtray"> ' + i.s(a.items[k], a.itemType) + " " + i.s(a.items[k + 1], a.itemType) + " </div>"), k += b.A;
                                    return b.d.append(j), g = f(c, d), window.setTimeout(function() {
                                        return e(c, g, b, d)
                                    }, 300)
                                },
                                error: function() {},
                                complete: function() {
                                    return b.pb()
                                }
                            })
                        }, j = h.u & 0 === h.e ? this.f - 1 : this.f, f = function(a, b) {
                            var c, d;
                            for (c = a, d = 1; b >= 1 ? b >= d : d >= b; b >= 1 ? ++d : --d) c = c.next();
                            return 0 !== c.length ? c : null
                        }, d = f(b, j), c = !1, h.b >= h.B) c = !1;
                        else if (null === d) c = !0;
                        else {
                            for (c = d, k = 1, l = this.f - 1; l >= 1 ? l >= k : k >= l; l >= 1 ? ++k : --k) c = c.next();
                            c = 0 === c.length ? !0 : !1
                        }
                        c ? g(h, b, j) : e(b, d, h, j)
                    }
                }, d.prototype.Lb = function(b, c) {
                    var d, e, f, g, h, i, j;
                    if (c < this.f) return !1;
                    for (d = b.find(".inside"), e = b.find(".subtray"), i = this.ta.width, j = Math.floor(c / this.f) * this.f, d = parseInt(d.css("margin-left")), f = a(e[j]).position().left, f = d - f, h = this.Ra(e, f - d), g = i - h > -this.X ? !0 : !1; i - h > this.X;) j--, f = a(e[j]).position().left, f = d - f, h = this.Ra(e, f - d);
                    return {
                        Xb: j,
                        Wb: f,
                        gc: g
                    }
                }, d.prototype.Ta = function(a, b) {
                    return "" + ('<div class="subtray"> ' + this.s(a, b) + " </div>")
                }, d.prototype.Nb = function(a, b, c) {
                    return "" + ('<div class="subtray"> ' + this.s(a, c) + " " + this.s(b, c) + " </div>")
                }, d.prototype.s = function(a, b) {
                    try {
                        return function() {
                            var c, d, e, f, g, h, i;
                            switch (!0 === Boolean(a.isPinned) && (a.img = a.img.replace(/small\.jpg/g, "large.jpg")), e = "thumbnail" + (!0 === Boolean(a.isUpcoming) ? " upcoming" : "") + (!0 === Boolean(a.isPinned) ? " pinned" : "") + (!0 === Boolean(a.rankNo) ? " rank-" + a.rankNo : ""), g = h = "", d = c = i = null, b) {
                                case "film":
                                    f = "/" + a.filmSlug, g = a.filmSlug, i = a.filmName;
                                    break;
                                case "video":
                                    f = "/video/" + a.slug, i = a.name, c = '<i class="icon-eye" ></i> ' + a.views, d = '<i class="icon-clock" ></i> ' + a.duration;
                                    break;
                                default:
                                    switch (f = "/" + a.filmSlug + "/" + a.epSlug, g = a.epSlug, h = '<span class="icon-play small" > &nbsp; </span>', b) {
                                        case "filmEplist":
                                            i = a.epName;
                                            break;
                                        case "episode":
                                            i = a.filmName, c = a.epName, d = '<i class="icon-eye" ></i> ' + a.views
                                    }
                            }
                            return "" + ('<div class=" ' + e + ' "  > <a href=" ' + f + ' "> <img alt=" ' + g + ' " src=" ' + a.img + ' " /> ' + ('<span class="description">' + (null !== i ? '<strong class="t-one-line">' + i + "</strong>" : "") + (null !== c ? '<span class="t-one-line t-tertiary left" > ' + c + " </span>" : "") + (null !== d ? '<span class="t-one-line t-tertiary right" > ' + d + " </span>" : "") + "</span>") + " " + h + " </a> </div>")
                        }()
                    } catch (c) {
                        return ""
                    }
                }, d.prototype.Gb = function() {
                    var b, c, d, e, f;
                    if (e = this, d = this.pa(this.ca), a(window).scrollTop() + a(window).height() > d.a.position().top + d.a.height()) try {
                        b = a('<div class="loading"></div>'), d.j || (d.j = !0, d.b >= d.B || (d.a.append(b[0]), c = {}, f = d.Va(), f < e.Q && (c.limit = f), a.ajax({
                            url: d.O(),
                            type: "GET",
                            data: d.N(c),
                            success: function(a) {
                                var c, f, g, h, i;
                                for (d.b += a.items.length, f = "", i = a.items, g = 0, h = i.length; h > g; g++) c = i[g], f += e.s(c, a.itemType);
                                d.d.append(f), b.remove(), d.j = !1
                            }
                        })))
                    } catch (g) {
                        console.log(g)
                    }
                }, d.prototype.Vb = function() {
                    var b, c, d;
                    d = this.J[this.Na], "undefined" != typeof d && (c = -1, d.d.find(".thumbnail").each(function(b) {
                        return a(this).hasClass("now-playing") ? (c = b, !1) : void 0
                    }), -1 !== c && (b = this.Lb(d.L, c))) && (d.e = b.Xb, d.d.css("margin-left", b.Wb))
                }, d.prototype.Rb = function(b, c, d) {
                    var e, f;
                    f = this, (e = this.J[this.Na]) && !e.j && (e.lock(), a.ajax({
                        url: e.O(),
                        type: "get",
                        data: e.N({
                            rangeNo: b
                        }),
                        success: function(a) {
                            var b, g, h, i, j;
                            for (g = "", j = a.items, h = 0, i = j.length; i > h; h++) b = j[h], g += '<div class="subtray"> ' + f.s(b, "filmEplist") + " </div>";
                            e.d.html(g), e.B = e.b = e.fa = a.items.length, e.e = 0, c(d), e.d.css("margin-left", "0px"), e.v(f.f), e.qb()
                        },
                        error: function() {
                            e.qb()
                        }
                    }))
                }, new d
            }(jQuery), jQuery(document).ready(function(a) {
                var b, c;
                b = a(".film-tooltip"), c = void 0, a(".tray").on({
                    mouseenter: function() {
                        var d, e, f, g, h;
                        a(this).is("[data-item-id]") && a(this).is("[data-item-type]") && (g = function(c) {
                            var d, e, f;
                            d = c.offset().left + c.width(), f = c.offset().top + c.height() / 2 - b.height() / 2, e = b.children(".arrow"), e.removeClass("right"), e.addClass("left"), d + b.width() > a(window).width() && (e.removeClass("left"), e.addClass("right"), d = c.offset().left - b.outerWidth()), b.css("top", f), b.css("left", d), b.addClass("active")
                        }, d = function(a) {
                            var c;
                            c = [], c.kind = "", a.kind && (c.kind = '<div class="kind"> <a href="' + a.kind.url + '"> ' + a.kind.name + " </a> </div>"), c.desc = "", a.desc && (c.desc += '<div class="description">' + (a.desc["short"] ? '<div class="short"> ' + a.desc["short"] + " </div>" : "") + (a.desc.tertiary ? '<div class="t-tertiary"> ' + a.desc.tertiary + " </div>" : "") + "</div>"), b.html('<div class="arrow left"></div> <div class="inside"> <p class="title"> ' + a.title + " </p> " + c.kind + " " + c.desc + ' <div class="buttons text-center"> <button type="button" class="btn btn-primary"> <a href="' + a.url + '" style="color: inherit; text-decoration: none;" >Xem ngay</a> </button> </div> </div>'), g(h)
                        }, h = a(this), e = a(this).attr("data-item-id"), f = a(this).attr("data-item-type"), c = setTimeout(function() {
                            a.ajax({
                                url: "/ajax/film/tooltip",
                                type: "get",
                                data: {
                                    item_id: e,
                                    item_type: f
                                },
                                cache: !1,
                                success: d
                            })
                        }, 800))
                    },
                    mouseleave: function() {
                        return clearTimeout(c), b.is(":hover") ? void 0 : (b.removeClass("active"), setTimeout(function() {
                            return b.html("")
                        }, 200))
                    }
                }, ".thumbnail.ttip"), b.mouseleave(function() {
                    return b.removeClass("active"), setTimeout(function() {
                        return b.html("")
                    }, 200)
                })
            }), $(document).ready(function() {
                var b, c, d;
                b = function() {
                    return a.ec()
                }, d = function() {
                    var a;
                    (a = b()) && (document.location.href = "/tim-kiem/" + a)
                }, c = null, $("#top-search-box").on("click", ".more a, .submit", function() {
                    d()
                }), $("#top-search-box .result").on("mouseover", "li", function() {
                    try {
                        $("#top-search-box").find("li.selected").removeClass("selected")
                    } catch (a) {}
                    $(this).addClass("selected")
                }), $(document).keydown(function(a) {
                    var d, e;
                    $("#top-search-box input").is(":focus") && (c = b(), d = $("#top-search-box .result"), e = d.find(".selected"), a = a.keyCode, 40 === a ? (a = e.is(":last-child") ? e.parent().next().next().children().first() : e.next("li"), e.removeClass("selected"), a.length ? a.addClass("selected") : d.children("ul").first().children("li").first().addClass("selected")) : 38 === a && (a = e.is(":first-child") ? e.parent().prev().prev().children().last() : e.prev("li"), e.removeClass("selected"), a.length ? a.addClass("selected") : d.find("li.more").addClass("selected")))
                }), $(document).keyup(function(a) {
                    var e, f, g;
                    if (f = $("#top-search-box input"), f.is(":focus")) {
                        if (g = $("#top-search-box .result"), a = a.keyCode, e = b(), 27 === a) f.blur();
                        else if (13 === a) {
                            if (!e) return;
                            f = g.find("li.selected"), f.length ? f.hasClass("more") ? d() : (f = f.children("a").attr("href"), window.location.href = f) : d()
                        } else {
                            if (!e) return g.fadeOut(100), void f.val("");
                            if (c === e) return;
                            $.ajax({
                                url: "/ajax/search",
                                type: "get",
                                data: {
                                    q: e
                                },
                                cache: !1,
                                success: function(a) {
                                    var b, c, d;
                                    d = function(a) {
                                        var b;
                                        return b = "<ul>", $.each(a, function(a, c) {
                                            b += '<li><a href="' + c.link + '">' + c.name + "</a></li>"
                                        }), b += "</ul>"
                                    }, b = "", c = !0, a.film && (c = !1, b = b + '<p class="title">Phim</p>' + d(a.film)), a.actor && (c = !1, b += '<p class="title">Diá»…n viÃªn</p>', b += d(a.actor)), a.tag && (c = !1, b += '<p class="title">Tag</p>', b += d(a.tag)), c ? g.fadeOut(100) : (b += '<span class="hidden">&nbsp;</span><ul><li class="more"><a href="#">Xem ThÃªm</a></li></ul>', g.html(b), g.fadeIn(100))
                                }
                            })
                        }
                        return !1
                    }
                }), $("#top-search-box input").focus(function() {
                    var a;
                    $(this).parent().addClass("focused"), $("#top-search-box input").val() && (a = $(this), window.setTimeout(function() {
                        a.select()
                    }, 50), $("#top-search-box .result").fadeIn(100))
                }).blur(function() {
                    $(this).parent().removeClass("focused"), $("#top-search-box .result").is(":hover") ? window.setTimeout(function() {
                        $("#top-search-box .result").fadeOut(100)
                    }, 1e3) : $("#top-search-box .result").fadeOut(100)
                })
            }), c = function(a) {
                var b;
                return b = function() {
                    this.ea = this.n = this.xa = this.M = this.i = this.g = this.H = this.U = this.l = this.canvas = null, this.ab = !1
                }, b.prototype.h = function() {
                    var b;
                    b = this, this.da = !1, this.ea = !0, this.canvas = a("#snake-game canvas")[0], this.l = this.canvas.getContext("2d"), this.U = a("#snake-game canvas").width(), this.H = a("#snake-game canvas").height(), this.g = 10, this.i = "right", this.Fb(), this.Ja(), this.xa = 0, "undefined" != typeof b.Y && clearInterval(b.Y), this.hb(), a("#snake-game .restart").removeClass("show"), !1 === this.ab && (a(document).keydown(function(a) {
                        a = a.which, 37 === a && "right" !== b.i ? b.i = "left" : 38 === a && "down" !== b.i ? b.i = "up" : 39 === a && "left" !== b.i ? b.i = "right" : 40 === a && "up" !== b.i ? b.i = "down" : 13 === a && b.toggle()
                    }), this.ab = !0), a("#snake-game").on("click", ".restart", function() {
                        b.h()
                    })
                }, b.prototype.toggle = function() {
                    this.ea ? this.play() : this.pause()
                }, b.prototype.pause = function() {
                    this.Y = window.clearInterval(this.Y), this.ea = !0
                }, b.prototype.play = function() {
                    var a;
                    return a = this, a.da ? !1 : (a.Y = setInterval(function() {
                        a.hb()
                    }, 60), void(this.ea = !1))
                }, b.prototype.Fb = function() {
                    var a;
                    for (this.n = [], a = 4; a >= 0;) this.n.push({
                        x: a,
                        y: 0
                    }), a--
                }, b.prototype.Ja = function() {
                    this.M = {
                        x: Math.round(Math.random() * (this.U - this.g) / this.g),
                        y: Math.round(Math.random() * (this.H - this.g) / this.g)
                    }
                }, b.prototype.hb = function() {
                    var b, c, d;
                    if (this.l.fillStyle = "white", this.l.fillRect(0, 0, this.U, this.H), this.l.strokeStyle = "black", this.l.strokeRect(0, 0, this.U, this.H), b = this.n[0].x, c = this.n[0].y, "right" === this.i ? b++ : "left" === this.i ? b-- : "up" === this.i ? c-- : "down" === this.i && c++, -1 === b || b === this.U / this.g || -1 === c || c === this.H / this.g || this.Bb(b, c, this.n)) a("#snake-game .restart").addClass("show"), this.da = !0, this.pause();
                    else {
                        for (b === this.M.x && c === this.M.y ? (d = {
                            x: b,
                            y: c
                        }, this.xa++, this.Ja()) : (d = this.n.pop(), d.x = b, d.y = c), this.n.unshift(d), c = 0; c < this.n.length;) b = this.n[c], this.ib(b.x, b.y), c++;
                        this.ib(this.M.x, this.M.y), this.l.fillText("Äiá»ƒm: " + this.xa, 5, this.H - 5)
                    }
                }, b.prototype.ib = function(a, b) {
                    this.l.fillStyle = "blue", this.l.fillRect(a * this.g, b * this.g, this.g, this.g), this.l.strokeStyle = "white", this.l.strokeRect(a * this.g, b * this.g, this.g, this.g)
                }, b.prototype.Bb = function(a, b, c) {
                    var d;
                    for (d = 0; d < c.length;) {
                        if (c[d].x === a && c[d].y === b) return !0;
                        d++
                    }
                    return !1
                }, new b
            }(jQuery),
            function(b) {
                var d;
                return d = function() {
                    this.h()
                }, d.prototype.p = b("#player"), d.prototype.h = function() {
                    this.p.bind("contextmenu", function(a) {
                        a.preventDefault()
                    }), this.Oa = this.p.attr("data-film-slug"), this.Ma = this.p.attr("data-ep-slug"), this.ub = {
                        filmSlug: this.Oa,
                        epSlug: this.Ma
                    }, "undefined" != typeof this.Oa && "undefined" != typeof this.Ma && this.$b()
                }, d.prototype.$b = function() {
                    !0 === this.zb() ? (b(document).on("click", "#play-game-btn", function() {
                        b("#game-model").modal("show"), "undefined" != typeof c.da && !0 !== c.da || c.h()
                    }), b("#game-model").on("hide.bs.modal", function() {
                        c.pause()
                    })) : this.Wa()
                }, d.prototype.zb = function() {
                    var a, d, e, f, g, h, i, j, k, l;
                    return l = this, j = this.p.attr("data-release-time"), h = window.globServerTime, h -= Math.floor(60 * (10 * Math.random() + 1)), f = function() {
                        var a;
                        return a = j - h, 0 > a ? !1 : "<p>CÃ²n " + Math.floor(a / 86400) + " ngÃ y " + Math.floor(a % 86400 / 3600) + " giá» " + Math.floor(a % 3600 / 60) + " phÃºt " + Math.floor(a % 60 / 1) + " giÃ¢y </p>"
                    }, "undefined" == typeof j ? !1 : (j = parseInt(j), 0 > j - h ? !1 : (d = document.createElement("div"), a = document.createElement("div"), e = document.createElement("div"), g = document.createElement("div"), d.className = "countdown-wrapper", a.className = "countdown", e.innerHTML = '<button class="btn btn-warning" id="play-game-btn"> ChÆ¡i ráº¯n sÄƒn má»“i </button>', g.innerHTML = '<div> <small> Báº¥m like Ä‘á»ƒ tiáº¿p thÃªm Ä‘á»™ng lá»±c cho subteam báº¡n nhÃ©! ;) </small> <div class="fb-like" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"> </div> </div>', i = "<p>ÄÃ³n xem <strong> " + l.p.attr("data-item-name") + " táº­p " + l.p.attr("data-ep-no") + " </strong> lÃºc " + function(a) {
                        var b, c, d;
                        return a = new Date(1e3 * (a + 60 * ((new Date).getTimezoneOffset() + 420))), b = "chá»§ nháº­t;thá»© hai;thá»© ba;thá»© tÆ°;thá»© nÄƒm;thá»© sÃ¡u;thá»© báº£y".split(";")[a.getDay()], c = a.getHours(), d = "AM", c > 12 && (c -= 12, d = " PM"), "" + ("00" + c).substr(-2) + ":" + ("00" + a.getMinutes()).substr(-2) + (" " + d) + ", " + ("" + b + " ngÃ y " + a.getDate() + " / " + (a.getMonth() + 1))
                    }(j) + " </p>", d.innerHTML = i, d.appendChild(g), d.appendChild(a), d.appendChild(e), l.p.append(d), k = setInterval(function() {
                        var d;
                        d = f(), !1 !== d ? (a.innerHTML = d, h++) : (k = window.clearInterval(k), c.pause(), b("#game-model").modal("hide"), l.Wa())
                    }, 1e3), !0))
                }, d.prototype.ac = function() {
                    videojs("video-player", {
                        nativeControlsForTouch: !1,
                        plugins: window.globUser.hidePoop ? {
                            progressTips: {},
                            serverSelector: {},
                            hotkeys: {}
                        } : {
                            progressTips: {},
                            serverSelector: {},
                            hotkeys: {},
                            pauseBanner: {},
                            ads: {},
                            vast: {}
                        }
                    })
                }, d.prototype.Wa = function() {
                    var c;
                    c = this, a.Hb(), b.ajax({
                        type: "GET",
                        url: "/api/episode/getEpVideoLink",
                        data: this.ub,
                        error: function() {
                            b.notify("Táº­p phim nÃ y Ä‘ang gáº·p lá»—i, xin vui lÃ²ng chá»n táº­p khÃ¡c."), a.Aa()
                        },
                        success: function(b) {
                            var d, e;
                            for (e = '<video id="video-player" controls autoplay preload="auto" width="100%" height="100%" class="video-js vgplayer-skin vgplayer-big-play-centered" >', d = 0; d < b.length;) e += '<source src="' + b[d].source + '" type="video/mp4" server-name="' + b[d].name + '" />', d++;
                            c.p.html(e + "</video>"), c.ac(), a.Aa()
                        }
                    })
                }, b("#episode-tray").length ? new d : null
            }(jQuery),
            function(a) {
                var c;
                return c = function() {
                    this.h()
                }, c.prototype.w = new function() {
                    this.F = a("#FilmRangeFilter"), this.t = this.F.find(".dropdown"), this.Ba = a("#FilmCurrentRange"), this.ra = !1, this.Ka = parseInt(this.Ba.attr("data-current-range-no"))
                }, c.prototype.m = new function() {
                    var b, c, d;
                    d = this, this.F = a("#quick-ep-selector"), this.k = this.F.find('input[name="current_ep"]'), this.sb = this.F.find(".submit"), this.t = this.F.find(".dropdown"), this.ob = null, this.Ya = parseInt(this.k.attr("min")) || 0, this.Xa = parseInt(this.k.attr("max")) || 0, this.Kb = function() {
                        return parseInt(this.k.val())
                    }, this.dc = function(a) {
                        this.k.val(a)
                    }, c = function() {
                        clearTimeout(d.ob)
                    }, b = function() {
                        d.k.blur(), d.k.val(d.k.attr("data-ep-no")), d.t.fadeOut("fast")
                    }, this.F.hover(function() {
                        c(), d.k.focus(), d.t.fadeIn("fast")
                    }, function() {
                        d.ob = setTimeout(function() {
                            b()
                        }, 1500)
                    })
                }, c.prototype.h = function() {
                    var c, d;
                    c = this, b.Vb(), this.w.t.on("click", ".range", function() {
                        return c.cc(a(this)), !1
                    }), d = function() {
                        c.bc(c.m.Kb())
                    }, this.m.sb.click(d), this.m.k.keydown(function(a) {
                        13 === a.keyCode && d()
                    })
                }, c.prototype.Ib = function() {
                    return parseInt(this.m.k.attr("data-ep-no") || 1)
                }, c.prototype.bc = function(b) {
                    var c, d, e;
                    c = this.Ib(), e = function() {
                        return window.location.pathname.split("/")
                    }, d = function() {
                        var a;
                        return a = e(), "" === a[0] ? a[1] : a[0]
                    }, b === c ? a.notify("Báº¡n Ä‘ang xem táº­p " + c) : this.m.Ya <= b && b <= this.m.Xa ? window.location.href = window.location.protocol + "//" + window.location.host + "/" + d() + "/tap-" + b : (this.m.dc(c), a.notify("Phim nÃ y hiá»‡n táº¡i cÃ³ tá»« táº­p " + this.m.Ya + " Ä‘áº¿n táº­p " + this.m.Xa))
                }, c.prototype.cc = function(a) {
                    var c, d;
                    d = parseInt(a.attr("data-range-no")), d === this.w.Ka || this.w.ra || (c = this.w, c.Ka = d, this.w.ra = !0, c.t.css("visibility", "hidden"), c.t.find(".selected").removeClass("selected"), a.parent().addClass("selected"), c.Ba.html(a.text()), c = {
                        epLst: this
                    }, a = function(a) {
                        return a = a.epLst, a.w.ra = !1, a.w.t.removeAttr("style")
                    }, b.Rb(d, a, c))
                }, a("#episode-tray").length ? new c : null
            }(jQuery),
            function(b) {
                var c;
                return c = function() {
                    this.va = {
                        displayName: !1,
                        username: !1,
                        password: !1,
                        password2: !1
                    }, this.h()
                }, c.prototype.h = function() {
                    var a;
                    a = this, b("#regfrmUsername").blur(function() {
                        return a.T(b(this), "username")
                    }), b("#regfrmEmail").blur(function() {
                        return a.T(b(this), "email")
                    }), b("#regfrmDisplayName").blur(function() {
                        return a.T(b(this), "displayName")
                    }), b("#regfrmPassword").blur(function() {
                        return a.T(b(this), "password")
                    }), b("#regfrmPassword2").blur(function() {
                        return a.T(b(this), "password2")
                    }), b("#regfrmPassword").change(function() {
                        return b("#regfrmPassword2").val(""), a.ba(b("#regfrmPassword2"))
                    }), b(".pinned-message").on("click", ".message-body", function() {
                        b(this).parent().hide()
                    }), b('form[role="register-modal-form"]').submit(function(c) {
                        c.preventDefault(), a.register(b(this))
                    })
                }, c.prototype.register = function(c) {
                    var d, e, f;
                    f = this, e = a.Qa(c), e.type = "register", d = c.parents(".modal").find(".pinned-message"), this.Yb() ? b.ajax({
                        url: "/ajax/sign-in",
                        type: "post",
                        data: e,
                        cache: !1,
                        success: function(a) {
                            !0 === a.status ? (f.ya(d, {
                                level: "success",
                                content: "ÄÄƒng kÃ­ thÃ nh cÃ´ng"
                            }), setTimeout(function() {
                                b("#registerModal").modal("hide"), location.reload()
                            }, 1500)) : location.reload()
                        },
                        error: function() {
                            f.ya(d, {
                                level: "danger",
                                content: "ÄÄƒng kÃ­ tháº¥t báº¡i"
                            })
                        }
                    }) : f.ya(d, {
                        level: "danger",
                        content: "Xin lá»—i, thÃ´ng tin Ä‘Äƒng kÃ­ khÃ´ng há»£p lá»‡."
                    })
                }, c.prototype.T = function(a, c) {
                    var d, e, f, g, h, i, j, k, l;
                    switch (d = function(a, b) {
                        var c;
                        return b = b || !1, c = a.val(), 0 === c.length ? (f.I(a, "KhÃ´ng thá»ƒ bá» trá»‘ng"), !1) : (b && (c = trim_str(c)), c)
                    }, g = function(a) {
                        b.ajax({
                            url: "/ajax/validate",
                            type: "post",
                            data: {
                                string: a.string,
                                type: a.type
                            },
                            cache: !1,
                            success: function(b) {
                                switch (b.status) {
                                    case 0:
                                        return f.I(a.$input, a.case0);
                                    case 1:
                                        return f.ba(a.$input);
                                    case 2:
                                        return f.I(a.$input, a.case2)
                                }
                            },
                            error: function() {
                                f.I(a.$input, "Lá»—i, vui lÃ²ng táº£i láº¡i trang.")
                            }
                        })
                    }, e = function(a) {
                        return -1 !== a.value.search(new RegExp(a.getAttribute("pattern")))
                    }, h = function(a) {
                        var b;
                        b = d(a), !1 !== b && g({
                            $input: a,
                            string: b,
                            type: "displayname",
                            case0: "Há» tÃªn cÃ³ Ã­t nháº¥t 5 kÃ­ tá»±, chá»‰ sá»­ dá»¥ng chá»¯ cÃ¡i (a-z) vÃ  khoáº£ng tráº¯ng."
                        })
                    }, i = function(a) {
                        var b;
                        b = d(a), !1 !== b && g({
                            $input: a,
                            string: b,
                            type: "email",
                            case0: "Äá»‹a chá»‰ email khÃ´ng há»£p lá»‡.",
                            case2: "Email Ä‘Ã£ tá»“n táº¡i."
                        })
                    }, l = function(a) {
                        var b;
                        b = d(a), !1 !== b && g({
                            $input: a,
                            string: b,
                            type: "username",
                            case0: "TÃªn Ä‘Äƒng nháº­p Ã­t nháº¥t 5 kÃ­ tá»±, chá»‰ sá»­ dá»¥ng chá»¯ cÃ¡i (a-z) vÃ  sá»‘.",
                            case2: "TÃªn Ä‘Äƒng nháº­p Ä‘Ã£ tá»“n táº¡i."
                        })
                    }, j = function(a) {
                        !1 !== d(a) && (e(a.get(0)) ? f.ba(a) : f.I(a, "Máº­t kháº©u Ã­t nháº¥t 6 kÃ­ tá»±"))
                    }, k = function(a) {
                        var c, e;
                        e = d(a), !1 !== e && (c = b("#regfrmPassword").val(), c === e ? f.ba(a) : f.I(a, "Hai máº­t kháº©u khÃ´ng khá»›p."))
                    }, f = this, c) {
                        case "displayName":
                            return h(a);
                        case "password":
                            return j(a);
                        case "password2":
                            return k(a);
                        case "email":
                            return i(a);
                        case "username":
                            return l(a)
                    }
                }, c.prototype.Yb = function() {
                    var a;
                    return a = !0, b.each(this.va, function(b, c) {
                        return !1 === c ? a = !1 : void 0
                    }), a
                }, c.prototype.I = function(a, b) {
                    var c, d;
                    c = a.parents(".inp-container"), d = document.createElement("DIV"), d.className = "error-msg", d.setAttribute("role", "alert"), d.innerHTML = b;
                    try {
                        c.find(".error-msg").remove()
                    } catch (e) {}
                    c.append(d), c.addClass("has-error"), this.va[a.attr("name")] = !1
                }, c.prototype.ba = function(a) {
                    var b;
                    b = a.parents(".inp-container"), b.removeClass("has-error");
                    try {
                        b.find(".error-msg").remove()
                    } catch (c) {}
                    this.va[a.attr("name")] = !0
                }, c.prototype.ya = function(a, b) {
                    var c;
                    c = document.createElement("SPAN"), c.className = "message-body " + b.level, c.innerHTML = b.content, a.html(c).slideDown(function() {
                        setTimeout(function() {
                            a.hide()
                        }, 2e3)
                    })
                }, new c
            }(jQuery),
            function(b) {
                var c;
                return c = function() {
                    return this.Za = !1, this.o = b("#comments"), this.a = this.o.find(".tray"), this.K = b("#load_more_comment"), this.D = this.o.find(".blocks"), this.Fa = b("#txtCommentForm"), this.V, this.Qb = this.a.attr("data-item-type"), this.P = this.a.attr("data-item-slug"), this.S = null, this.cb = this.b = 0, this.h()
                }, c.prototype.W = "vg_cmnt", c.prototype.na = 10, c.prototype.Ga = 5, c.prototype.yb = '<article class="comment-block {{ comment-level }} {{ pinned }}" id="vgCmnt{{ id }}" > <a href="{{ author.link }}" class="avatar" > <img src="{{ author.avatar }}" /> </a> <div class="content"> <div class="comment-meta"> <span class="author {{ author.banned }}"> <a href="{{ author.link }}"> {{ author.displayName }} </a> </span> <span class="t-tertiary"> {{ author.role }} Â· <time datetime="{{ timestamp.robot }}" > {{ timestamp.human }} </time> </span> </div> <div class="comment-body"> {{ content }} </div> <div class="action-links"> <a class="reply-link t-tertiary" href="#" role="reply" data-comment-level= "{{ comment-level }}" parent-comment-id= "{{ parentCommentId }}" author-id= "{{ author.id }}" author-display-name= "{{ author.displayName }}" > Tráº£ lá»i </a> </div> {{ reply }} </div> </article>', c.prototype.ja = function(a) {
                    switch (a = a || {}, this.Qb) {
                        case "f":
                            a.filmSlug = this.P;
                            break;
                        case "v":
                            a.videoSlug = this.P;
                            break;
                        default:
                            a.newsSlug = this.P
                    }
                    return a
                }, c.prototype.refresh = function(c) {
                    var d, e;
                    return d = this, e = a.aa(), 5e3 > e - this.cb ? (b.notify("Má»—i refresh cÃ¡ch nhau 5 giÃ¢y."), !1) : (this.cb = e, this.b = 0, this.D.html(""), b.ajax({
                        url: "/api/comment/countComment",
                        type: "GET",
                        data: d.ja({}),
                        success: function(a) {
                            return d.S = parseInt(a.total), d.eb(c)
                        }
                    }))
                }, c.prototype.h = function() {
                    var c, d;
                    return c = this, b(window).scroll(function() {
                        return c.Za ? !1 : void(b(window).scrollTop() + b(window).height() > c.o.offset().top && (c.Za = !0, c.refresh()))
                    }), a.Pa(this.W) || (d = parseInt(a.aa()), a.lb(this.W, d - 1e3 * this.na)), b("#refreshCommentBtn").click(function(a) {
                        return a.preventDefault(), c.refresh(function() {
                            return b("html, body").animate({
                                scrollTop: c.D.offset().top - 50
                            }, "fast")
                        })
                    }), b("#icoGoToComment").click(function(a) {
                        a.preventDefault(), b("html, body").animate({
                            scrollTop: b("#comments").offset().top - 50
                        }, "fast")
                    }), this.o.on("click", "textarea", function() {
                        a.la()
                    }), this.Fa.simplyCountable({
                        counter: "#txtCommentFormCounter",
                        countType: "words",
                        strictMax: !1,
                        countDirection: "up"
                    }), this.K.click(function() {
                        c.eb()
                    }), this.o.on("click", ".more_reply", function(a) {
                        return a.preventDefault(), b(this).parents().removeClass("up"), !1
                    }), this.wb(), this.o.on("submit", "#frmPostNewComment", function(a) {
                        var d;
                        a.preventDefault(), d = b("#txtCommentForm").val(), c.rb(d) && (a = function(a) {
                            var d;
                            return d = c.Ha(a), void 0 === c.V && (a = c.D.find(".pinned"), c.V = a.length ? a : !1), !1 !== c.V ? c.V.after(b(d).fadeIn()) : c.D.prepend(b(d).fadeIn()), c.Fa.val(""), c.b++, c.S++
                        }, c.jb({
                            content: d
                        }, a))
                    })
                }, c.prototype.wb = function() {
                    var c, e;
                    c = this, e = '<form id="reply-form" role="new-reply" class="comment-form comment-block" > <a href=" ' + d.url + ' " class="avatar" title=" ' + d.oa + ' " > <img src=" ' + d.ka + ' " alt=" ' + d.oa + ' " /> </a> <div class="field"> <textarea id="reply-form-textarea" placeholder="Vui lÃ²ng nháº­p Ã­t nháº¥t 5 tá»«." rows="2" class="textarea form-control" ></textarea> </div> <div class="bot"> <button id="post-new-reply" class="btn btn-primary" >ÄÄƒng</button> </div> </form>', this.o.on("click", ".reply-link", function(c) {
                        return c.preventDefault(), a.la() ? (b("#reply-form").remove(), b(this).closest(".comment-block.1").find(".reply:first").append(e), c = b("#reply-form"), b("#reply-form-textarea").val("").focus(), c.attr("parent-comment-id", b(this).attr("parent-comment-id")), "2" === b(this).attr("data-comment-level") && (c.attr("tagged-author-id", b(this).attr("author-id")), b("#reply-form-textarea").val("@" + b(this).attr("author-display-name") + ": ")), !1) : !1
                    }), b("#comments").on("blur", "#reply-form-textarea", function() {
                        b(this).val() || b("#reply-form").remove()
                    }), this.o.on("click", "#post-new-reply", function(a) {
                        var d;
                        return a.preventDefault(), a = {}, a.content = b("#reply-form-textarea").val(), c.rb(a.content) ? (a.parentCommentId = b("#reply-form").attr("parent-comment-id"), (d = b("#reply-form").attr("tagged-author-id")) && (a.taggedAuthorId = d), c.jb(a, function(a) {
                            var d;
                            return a ? (d = c.Ia(a), b("#vgCmnt" + a.parentCommentId).find(".reply").append(b(d).fadeIn()), b("#reply-form").remove()) : void 0
                        })) : !1
                    })
                }, c.prototype.kb = function(a) {
                    var b;
                    if (b = this.yb, b = b.replaceAll("{{ id }}", a.id).replaceAll("{{ parentCommentId }}", a.parentCommentId).replaceAll("{{ author.id }}", a.author.id).replaceAll("{{ author.link }}", a.author.link).replaceAll("{{ author.displayName }}", a.author.displayName).replaceAll("{{ author.avatar }}", a.author.avatar).replaceAll("{{ timestamp.robot }}", a.timestamp.robot).replaceAll("{{ timestamp.human }}", a.timestamp.human).replaceAll("{{ content }}", a.content), a.author.banned && (b = b.replaceAll("{{ author.banned }}", "banned")), a.author.role = parseInt(a.author.role), 5 > a.author.role) {
                        switch (a.author.role) {
                            case 1:
                                a = "admin";
                                break;
                            case 2:
                                a = "smod";
                                break;
                            case 3:
                                a = "mod";
                                break;
                            case 4:
                                a = "vip";
                                break;
                            default:
                                a = ""
                        }
                        b = b.replaceAll("{{ author.role }}", 'Â· <span class="role ' + a + '"> ' + a + " </span>")
                    }
                    return b
                }, c.prototype.Ia = function(a) {
                    return this.kb(a).replaceAll("{{ comment-level }}", 2).replace(/\{\{(.*?)\}\}/g, "")
                }, c.prototype.Ha = function(a) {
                    var c, d, e;
                    return c = this, d = this.kb(a), d = d.replaceAll("{{ comment-level }}", 1), a.isPinned && (d = d.replaceAll("{{ pinned }}", "pinned")), e = '<div class="reply {{ up }}">', a.replies && b.each(a.replies, function(a, b) {
                        e += c.Ia(b)
                    }), a.replies && (a = a.replies.length, a > 2 && (e = e.replaceAll("{{ up }}", "up"), e += '<a class="more_reply" href="#" data-total-reply=" ' + a + ' " > </a>')), e += "</div>", d.replaceAll("{{ reply }}", e).replace(/\{\{(.*?)\}\}/g, "")
                }, c.prototype.eb = function(a) {
                    var c, d, e;
                    d = this, this.S >= this.b && (this.K.hide(), c = b('<div class="loading"></div>'), this.D.append(c), e = {
                        startIndex: this.b + 1
                    }, b.ajax({
                        url: "/api/comment/getComments",
                        type: "get",
                        data: d.ja(e),
                        success: function(e) {
                            var f;
                            f = "", b.each(e, function(a, b) {
                                f += d.Ha(b)
                            }), d.D.append(b(f).fadeIn()), d.b += e.length, d.b >= d.S ? d.K.hide() : (d.K.find(".content").html("Xem thÃªm " + (d.S - d.b).format() + " cáº£m nháº­n"), d.K.show()), c.remove(), "function" == typeof a && a()
                        }
                    }))
                }, c.prototype.rb = function(c) {
                    var d;
                    return d = !0, a.la() ? a.Eb(c) < this.Ga ? (b.notify("Vui lÃ²ng nháº­p Ã­t nháº¥t " + this.Ga + " tá»«."), d = !1) : !1 === this.Ab() && (d = !1) : d = !1, d
                }, c.prototype.jb = function(a, c) {
                    a = a || {}, a.content && b.ajax({
                        url: "/api/comment/postComment",
                        type: "POST",
                        data: this.ja(a),
                        success: function(a) {
                            return c(a)
                        }
                    })
                }, c.prototype.Zb = function() {
                    a.lb(this.W, a.aa())
                }, c.prototype.Ab = function() {
                    var c, d, e;
                    return c = 1e3 * this.na, e = a.Pa(this.W), d = parseInt(a.aa()), null === e ? !1 : (e = parseInt(e), c > d - e ? (b.notify("Má»—i cáº£m nháº­n cÃ¡ch nhau " + this.na + " giÃ¢y."), !1) : (this.Zb(), !0))
                }, b("#comments").length ? new c : null
            }(jQuery)
    }.call(this);