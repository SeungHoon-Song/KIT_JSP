(window.webpackJsonp = window.webpackJsonp || []).push([[2], {
    366: function(e, t, a) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var r = function() {
                return function(e, t) {
                    if (Array.isArray(e))
                        return e;
                    if (Symbol.iterator in Object(e))
                        return function(e, t) {
                            var a = [],
                                r = !0,
                                n = !1,
                                i = void 0;
                            try {
                                for (var s, o = e[Symbol.iterator](); !(r = (s = o.next()).done) && (a.push(s.value), !t || a.length !== t); r = !0)
                                    ;
                            } catch (e) {
                                n = !0,
                                i = e
                            } finally {
                                try {
                                    !r && o.return && o.return()
                                } finally {
                                    if (n)
                                        throw i
                                }
                            }
                            return a
                        }(e, t);
                    throw new TypeError("Invalid attempt to destructure non-iterable instance")
                }
            }(),
            n = function() {
                function e(e, t) {
                    for (var a = 0; a < t.length; a++) {
                        var r = t[a];
                        r.enumerable = r.enumerable || !1,
                        r.configurable = !0,
                        "value" in r && (r.writable = !0),
                        Object.defineProperty(e, r.key, r)
                    }
                }
                return function(t, a, r) {
                    return a && e(t.prototype, a), r && e(t, r), t
                }
            }(),
            i = o(a(381)),
            s = o(a(395));
        function o(e) {
            return e && e.__esModule ? e : {
                default: e
            }
        }
        var h = function(e) {
            function t() {
                var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : document,
                    a = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : null;
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, t);
                var r = function(e, t) {
                    if (!e)
                        throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
                    return !t || "object" != typeof t && "function" != typeof t ? e : t
                }(this, (t.__proto__ || Object.getPrototypeOf(t)).call(this, a));
                return r.scope = e, r.areaSearchModel = new s.default, r.areaSection = r.scope.querySelector("#search_form_recruit .option_area"), r.init(), r
            }
            return function(e, t) {
                if ("function" != typeof t && null !== t)
                    throw new TypeError("Super expression must either be null or a function, not " + typeof t);
                e.prototype = Object.create(t && t.prototype, {
                    constructor: {
                        value: e,
                        enumerable: !1,
                        writable: !0,
                        configurable: !0
                    }
                }),
                t && (Object.setPrototypeOf ? Object.setPrototypeOf(e, t) : e.__proto__ = t)
            }(t, i.default), n(t, [{
                key: "init",
                value: function() {
                    var e = this;
                    this.setDefaultAreaCondition(),
                    this.areaSection.addEventListener("click", function t(a) {
                        a.preventDefault(),
                        e.importAreaJs().then(function(t) {
                            var a = r(t, 6),
                                n = a[0],
                                i = a[1],
                                s = a[2],
                                o = a[3],
                                h = a[4],
                                c = a[5];
                            e.searchPanel = new n.default(e.areaSection, e.searchService.getPanelType()),
                            e.depth1Layer = new o.default(e.areaSection.querySelector(".details .categories")),
                            e.depth2Layer = new s.default(e.areaSection.querySelector(".details .filters")),
                            e.directLayer = new i.default(e.areaSection.querySelector(".quick .direct")),
                            e.areaHistory = new h.default(e.areaSection.querySelector(".quick .lately")),
                            e.areaInput || (e.areaInput = new c.default(e.areaSection.querySelector("#ipt_area_recruit"))),
                            e.bindAreaInitialEvents(),
                            e.searchPanel.activeOption(),
                            e.depth1Layer.moveScrollToSelectedDepth()
                        }),
                        a.currentTarget.removeEventListener(a.type, t)
                    })
                }
            }, {
                key: "setDefaultAreaCondition",
                value: function() {
                    var e = this,
                        t = void 0 !== window.searchPanelDefaultCondition ? window.searchPanelDefaultCondition.area : "";
                    t && (this.searchService.setSearchType(window.searchPanelDefaultCondition.type || ""), a.e(24).then(a.t.bind(null, 382, 7)).then(function(a) {
                        e.areaInput = new a.default(e.areaSection.querySelector("#ipt_area_recruit")),
                        t.split(",").map(function(t) {
                            return e.areaSearchModel.addAreaSearchCondition(t.toString())
                        }),
                        e.areaInput.setInputValue(e.areaSearchModel.getCheckedData(), "지역"),
                        e.searchService.setAreaCondition(e.areaSearchModel.getState("checkedDepth2"));
                        var r = e.areaSearchModel.getState("selectedDepth1"),
                            n = Object.keys(r).shift();
                        n && e.areaSearchModel.setState({
                            showCode: n
                        })
                    }))
                }
            }, {
                key: "importAreaJs",
                value: function() {
                    return Promise.all([a.e(27).then(a.t.bind(null, 384, 7)), a.e(23).then(a.t.bind(null, 390, 7)), a.e(22).then(a.t.bind(null, 389, 7)), a.e(21).then(a.t.bind(null, 388, 7)), a.e(20).then(a.t.bind(null, 387, 7)), a.e(24).then(a.t.bind(null, 382, 7))])
                }
            }, {
                key: "bindAreaInitialEvents",
                value: function() {
                    var e = this,
                        t = this.areaSearchModel.getDepth1Array();
                    this.depth1Layer.setList(t.domestic, t.overseas),
                    this.areaHistory.setHistory(this.areaSearchModel.getSearchAreaHistory()),
                    this.areaInput.on("@onClickAreaJobInput", function() {
                        return e.areaSearchModel.getState("openLayer") ? e.searchPanel.inActiveOption() : e.searchPanel.activeOption()
                    }),
                    this.searchPanel.on("@onClickPanel", function(t) {
                        return e.directLayer.closeLayerWhenClickOutside(t.detail.target)
                    }).on("@onTogglePanel", function(t) {
                        return e.setPanelOpenState(t.detail.open)
                    }),
                    this.areaHistory.on("@onClickHistory", function(t) {
                        return e.addAreaConditionAndSetPanelState(t.detail.code, "area_recently", t.detail.count)
                    }),
                    this.directLayer.on("@onKeyUpDirectInput", function(t) {
                        return e.renderAreaAutoComplete(t.detail.keyword)
                    }).on("@onOpenDirectLayer", function() {
                        return e.directLayer.setDirectCheckBoxesState(e.areaSearchModel.getState("checkedDepth2"))
                    }).on("@onCheckDirectCondition", function(t) {
                        return t.detail.checked ? e.addAreaConditionAndSetPanelState(t.detail.code, "area_inputbox") : e.removeAreaConditionAndSetPanelState(t.detail.code)
                    }),
                    this.depth1Layer.on("@onClickDepthDivision", function(t) {
                        e.areaSearchModel.getState("showCode") !== t.detail.code && (!e.areaSearchModel.getState("selectedDepth1").hasOwnProperty(t.detail.code) && e.areaSearchModel.getCheckedCount() < 15 && e.addAreaConditionAndSetPanelState(t.detail.code, "area_category"), e.areaSearchModel.setState({
                            showCode: t.detail.code
                        }), e.renderDepth2(), e.setAreaPanelState(), e.areaSearchModel.getState("expandLayer") && e.expandLayer())
                    }),
                    this.depth2Layer.on("@onCheckCondition", function(t) {
                        return t.detail.checked ? e.addAreaConditionAndSetPanelState(t.detail.code, "area_category") : e.removeAreaConditionAndSetPanelState(t.detail.code)
                    }).on("@onClickExpandBtn", function() {
                        return e.expandShrinkLayer()
                    }),
                    this.renderDepth2(),
                    this.setAreaPanelState()
                }
            }, {
                key: "addAreaConditionAndSetPanelState",
                value: function(e, t) {
                    var a = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : "",
                        r = this.areaSearchModel.getState("checkedDepth2").slice(0);
                    this.areaSearchModel.addAreaSearchCondition(e),
                    this.trackEventIfAddedDepth(r, t, a),
                    this.searchService.setAreaCondition(this.areaSearchModel.getState("checkedDepth2")),
                    this.setAreaPanelState()
                }
            }, {
                key: "trackEventIfAddedDepth",
                value: function(e, t) {
                    var a = this,
                        r = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : "";
                    this.areaSearchModel.getState("checkedDepth2").filter(function(t) {
                        return -1 === e.indexOf(t)
                    }).forEach(function(e) {
                        return r ? a.trackEventAndPushData(t, r) : a.trackEventAndPushData(t, e.code)
                    })
                }
            }, {
                key: "removeAreaConditionAndSetPanelState",
                value: function(e) {
                    this.areaSearchModel.removeAreaSearchCondition(e),
                    this.searchService.setAreaCondition(this.areaSearchModel.getState("checkedDepth2")),
                    this.setAreaPanelState()
                }
            }, {
                key: "renderAreaAutoComplete",
                value: function(e) {
                    var t = this;
                    this.areaSearchModel.searchAreaAutoCompleteList(e).then(function(a) {
                        t.directLayer.setList(a.list, e),
                        0 !== Object.keys(a).length && 0 !== a.count ? t.directLayer.showSuggestionList() : t.directLayer.showEmptyText()
                    }).catch(function() {
                        return !1
                    })
                }
            }, {
                key: "renderDepth2",
                value: function() {
                    var e = this.areaSearchModel.getState("showCode");
                    this.depth1Layer.setShowCode(e),
                    0 !== e ? (this.depth2Layer.hideSelectTextGuide(), this.depth2Layer.setList(this.areaSearchModel.getDepth2List(e))) : this.depth2Layer.showSelectTextGuide()
                }
            }, {
                key: "setAreaPanelState",
                value: function() {
                    var e = this.areaSearchModel.getState();
                    this.depth1Layer && this.depth1Layer.setSelectedState(e.selectedDepth1),
                    this.depth2Layer && this.depth2Layer.setCheckBoxesState(e.checkedDepth2),
                    this.directLayer && this.directLayer.setDirectCheckBoxesState(e.checkedDepth2),
                    this.areaInput && this.areaInput.setInputValue(this.areaSearchModel.getCheckedData(), "지역")
                }
            }, {
                key: "setPanelOpenState",
                value: function() {
                    arguments.length > 0 && void 0 !== arguments[0] && arguments[0] ? (this.areaSearchModel.setState({
                        openLayer: !0
                    }), this.searchService.setSearchActiveFlag(!0)) : (this.areaSearchModel.setState({
                        openLayer: !1
                    }), this.directLayer.closeLayer(), this.searchService.isFixedHeader() && this.shrinkLayer())
                }
            }, {
                key: "expandShrinkLayer",
                value: function() {
                    this.areaSearchModel.getState("expandLayer") ? this.shrinkLayer() : (this.trackEventAndPushData("area_open"), this.expandLayer())
                }
            }, {
                key: "shrinkLayer",
                value: function() {
                    this.areaSection.querySelector(".details").style.height = "",
                    this.depth1Layer.setHeight(this.LAYER_HEIGHT),
                    this.depth2Layer.setHeight(this.LAYER_HEIGHT),
                    this.depth2Layer.setShrinkState(),
                    this.areaSearchModel.setState({
                        expandLayer: !1
                    }),
                    window.dispatchEvent(new CustomEvent("resize")),
                    this.depth1Layer.moveScrollToSelectedDepth()
                }
            }, {
                key: "expandLayer",
                value: function() {
                    var e = Math.max(this.depth1Layer.getOffsetHeight(), this.depth2Layer.getOffsetHeight(), this.LAYER_HEIGHT);
                    this.areaSection.querySelector(".details").style.height = "auto",
                    this.depth1Layer.setHeight(e),
                    this.depth2Layer.setHeight(e),
                    this.depth2Layer.setExpandState(),
                    this.areaSearchModel.setState({
                        expandLayer: !0
                    }),
                    window.dispatchEvent(new CustomEvent("resize"))
                }
            }, {
                key: "resetState",
                value: function() {
                    this.areaSearchModel.resetState(),
                    this.searchService.setAreaCondition([]),
                    this.setAreaPanelState(),
                    this.depth1Layer && this.depth2Layer && this.renderDepth2()
                }
            }]), t
        }();
        t.default = h
    },
    381: function(e, t, a) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var r = function() {
                function e(e, t) {
                    for (var a = 0; a < t.length; a++) {
                        var r = t[a];
                        r.enumerable = r.enumerable || !1,
                        r.configurable = !0,
                        "value" in r && (r.writable = !0),
                        Object.defineProperty(e, r.key, r)
                    }
                }
                return function(t, a, r) {
                    return a && e(t.prototype, a), r && e(t, r), t
                }
            }(),
            n = a(18),
            i = function(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }(a(130));
        var s = function() {
            function e() {
                var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null;
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, e),
                this.searchService = t || new i.default,
                this.LAYER_HEIGHT = 231
            }
            return r(e, [{
                key: "trackEventAndPushData",
                value: function(e) {
                    var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "",
                        a = "",
                        r = "",
                        i = "";
                    this.searchService.isCompanyLogin() && this.searchService.isTalentPanel() ? (r = "talent_search_tab", i = a = this.searchService.isFixedHeader() ? "company-main_gnb_fixed" : "company-main") : (a = "panel_search", r = this.searchService.isFixedHeader() ? "main_gnb_fixed" : "main", i = this.searchService.isFixedHeader() ? "panel_search_main_gnb_fixed" : "panel_search_main"),
                    (0, n.nTrackEvent)(a, r, e, t),
                    (0, n.pushDataLayer)("ga_lead", i, e, t)
                }
            }, {
                key: "resetState",
                value: function() {
                    throw new Error("abstract method")
                }
            }]), e
        }();
        t.default = s
    },
    395: function(e, t, a) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var r = function() {
                function e(e, t) {
                    for (var a = 0; a < t.length; a++) {
                        var r = t[a];
                        r.enumerable = r.enumerable || !1,
                        r.configurable = !0,
                        "value" in r && (r.writable = !0),
                        Object.defineProperty(e, r.key, r)
                    }
                }
                return function(t, a, r) {
                    return a && e(t.prototype, a), r && e(t, r), t
                }
            }(),
            n = a(18);
        var i = function() {
            function e() {
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, e),
                this.domesticDepth1List = void 0 !== window.searchPanelAreaCategoryList ? window.searchPanelAreaCategoryList.area_1depth_domestic_text : {},
                this.overseasDepth1List = void 0 !== window.searchPanelAreaCategoryList ? window.searchPanelAreaCategoryList.area_1depth_overseas_text : {},
                this.depth1CodeList = void 0 !== window.searchPanelAreaCategoryList ? window.searchPanelAreaCategoryList.area_1depth : {},
                this.depth1List = void 0 !== window.searchPanelAreaCategoryList ? window.searchPanelAreaCategoryList.area : {},
                this.areaLatestList = void 0 !== window.searchPanelAreaLatestList ? window.searchPanelAreaLatestList : {},
                window.searchPanelAreaCategoryList = null,
                window.searchPanelAreaLatestList = null,
                this.exceededCount = 0,
                this.MAX_COUNT = 15,
                this.MAX_COUNT_MESSAGE = "지역은 " + this.MAX_COUNT + "개까지 선택 가능합니다.",
                this.resetState()
            }
            return r(e, [{
                key: "addAreaSearchCondition",
                value: function(e) {
                    var t = Object.assign({}, this.state.selectedDepth1),
                        a = this.state.checkedDepth2.slice(0),
                        r = this.exceededCount;
                    this.pushAreaCondition(e),
                    this.pushRepresentativeAreaWithChildren(e),
                    this.getCheckedCount() > this.MAX_COUNT && (this.state.selectedDepth1 = t, this.state.checkedDepth2 = a, this.exceededCount = r, alert(this.MAX_COUNT_MESSAGE))
                }
            }, {
                key: "pushAreaCondition",
                value: function(e) {
                    if (!(0, n.hasItemInObjectArray)(this.state.checkedDepth2, e, "code")) {
                        var t = this.getDepth1CodeByDepth2(e);
                        ((0, n.hasItemInObjectArray)(this.state.checkedDepth2, t, "code") || t === e) && this.resetCheckedDepthByCode(t);
                        var a = this.getDepth2(e);
                        Object.keys(a).length && (this.state.checkedDepth2.push(a), this.state.selectedDepth1.hasOwnProperty(t) || (this.state.selectedDepth1[t] = this.getDepth1(t)))
                    }
                }
            }, {
                key: "pushRepresentativeAreaWithChildren",
                value: function(e) {
                    var t = this,
                        a = this.getDepth2(e);
                    if (Object.keys(a).length && a.hasOwnProperty("representative"))
                        return a.representative.representativeCode === a.code ? (a.representative.childrenCodes.forEach(function(e) {
                            t.pushAreaCondition(e)
                        }), void (this.exceededCount -= a.representative.childrenCodes.length)) : void (this.hasAllChildrenCodes(a) && !(0, n.hasItemInObjectArray)(this.state.checkedDepth2, a.representative.representativeCode, "code") && (this.pushAreaCondition(a.representative.representativeCode), this.exceededCount -= a.representative.childrenCodes.length))
                }
            }, {
                key: "hasAllChildrenCodes",
                value: function(e) {
                    var t = this;
                    return !e.representative.childrenCodes.some(function(e) {
                        return !(0, n.hasItemInObjectArray)(t.state.checkedDepth2, e, "code")
                    })
                }
            }, {
                key: "removeAreaSearchCondition",
                value: function(e) {
                    var t = this,
                        a = this.state.checkedDepth2.slice(0),
                        r = this.exceededCount;
                    this.state.checkedDepth2.some(function(n, i) {
                        if (n.code !== e)
                            return !1;
                        t.state.checkedDepth2.splice(i, 1),
                        n.hasOwnProperty("representative") && t.canNotRemoveRepresentativeArea(n) && (alert(t.MAX_COUNT_MESSAGE), t.state.checkedDepth2 = a, t.exceededCount = r)
                    });
                    var n = this.getDepth1CodeByDepth2(e);
                    this.removeSelectedDepth1(n)
                }
            }, {
                key: "canNotRemoveRepresentativeArea",
                value: function(e) {
                    var t = this;
                    return e.representative.representativeCode === e.code ? (this.state.checkedDepth2 = this.state.checkedDepth2.filter(function(t) {
                        return !(e.representative.childrenCodes.indexOf(t.code) > -1)
                    }), this.exceededCount += e.representative.childrenCodes.length) : this.state.checkedDepth2.some(function(a, r) {
                        if (a.code === e.representative.representativeCode)
                            return t.state.checkedDepth2.splice(r, 1), t.exceededCount += e.representative.childrenCodes.length, !0
                    }), this.getCheckedCount() > this.MAX_COUNT
                }
            }, {
                key: "resetCheckedDepthByCode",
                value: function(e) {
                    var t = this;
                    this.state.checkedDepth2 = this.state.checkedDepth2.filter(function(a) {
                        return a.mcode === e && a.hasOwnProperty("representative") && a.representative.representativeCode === a.code && (t.exceededCount += a.representative.childrenCodes.length), a.mcode !== e
                    })
                }
            }, {
                key: "removeSelectedDepth1",
                value: function(e) {
                    (0, n.hasItemInObjectArray)(this.state.checkedDepth2, e, "mcode") || delete this.state.selectedDepth1[e]
                }
            }, {
                key: "searchAreaAutoCompleteList",
                value: function(e) {
                    var t = this;
                    return this.previousKeyword === e ? this.autoCompletePromise : (this.previousKeyword = e, this.abortRequestIfHasRequest(), this.abortController = new AbortController, this.autoCompletePromise = fetch("/zf_user/index/area-auto-complete?" + (0, n.buildQueryString)({
                        keyword: e
                    }), {
                        signal: this.abortController.signal
                    }).then(function(e) {
                        return e.json()
                    }).then(function(e) {
                        t.abortController = null;
                        var a = {
                            count: 0,
                            list: {}
                        };
                        if (void 0 === e || null === e)
                            return a;
                        var r = e.result_list;
                        for (var n in r) {
                            var i = r[n].code.split("|");
                            0 !== Object.keys(t.getDepth2(i[1])).length && (a.list[i[1]] = {
                                name: r[n].text,
                                code: i[1]
                            })
                        }
                        return a.count = Object.keys(a.list).length, a
                    }))
                }
            }, {
                key: "abortRequestIfHasRequest",
                value: function() {
                    this.abortController && (this.abortController.abort(), this.abortController = null, this.autoCompletePromise = null)
                }
            }, {
                key: "getDepth1Array",
                value: function() {
                    return {
                        domestic: this.domesticDepth1List,
                        overseas: this.overseasDepth1List
                    }
                }
            }, {
                key: "getDepth1",
                value: function(e) {
                    var t = this.domesticDepth1List.concat(this.overseasDepth1List).filter(function(t) {
                        return t.code.toString() === e
                    });
                    return 0 !== t.length ? t : {}
                }
            }, {
                key: "getDepth2",
                value: function(e) {
                    var t = this.getDepth1CodeByDepth2(e),
                        a = this.getDepth2List(t).filter(function(t) {
                            return t.bcode === e
                        });
                    return 0 !== a.length ? a[0] : {}
                }
            }, {
                key: "getCheckedCount",
                value: function() {
                    return this.state.checkedDepth2.length + this.exceededCount
                }
            }, {
                key: "getCheckedData",
                value: function() {
                    return {
                        list: this.state.checkedDepth2,
                        count: this.getCheckedCount()
                    }
                }
            }, {
                key: "setState",
                value: function(e) {
                    for (var t in e)
                        e.hasOwnProperty(t) && this.state.hasOwnProperty(t) && (this.state[t] = e[t])
                }
            }, {
                key: "getState",
                value: function() {
                    var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "";
                    return e && this.state.hasOwnProperty(e) ? this.state[e] : this.state
                }
            }, {
                key: "getDepth2List",
                value: function(e) {
                    return this.depth1List.hasOwnProperty(e) && this.depth1List[e].length > 0 ? this.depth1List[e] : []
                }
            }, {
                key: "getDepth1CodeByDepth2",
                value: function(e) {
                    return parseInt(e) && this.depth1CodeList.hasOwnProperty(e) ? this.depth1CodeList[e] : "0"
                }
            }, {
                key: "getSearchAreaHistory",
                value: function() {
                    var e = [],
                        t = {};
                    for (var a in this.areaLatestList)
                        this.areaLatestList[a].hasOwnProperty("code") && parseInt(this.areaLatestList[a].code) ? t = this.getDepth2(this.areaLatestList[a].code) : this.areaLatestList[a].hasOwnProperty("mcode") && parseInt(this.areaLatestList[a].mcode) && (t = this.getDepth2(this.areaLatestList[a].mcode)),
                        Object.keys(t).length && e.push(t);
                    return e
                }
            }, {
                key: "resetState",
                value: function() {
                    this.state = {
                        showCode: 0,
                        selectedDepth1: {},
                        checkedDepth2: [],
                        openLayer: !1,
                        expandLayer: !1
                    }
                }
            }]), e
        }();
        t.default = i
    }
}]);

