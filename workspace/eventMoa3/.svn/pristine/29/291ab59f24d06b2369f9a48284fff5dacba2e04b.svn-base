(window.webpackJsonp = window.webpackJsonp || []).push([[1], {
    365: function(e, t, o) {
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
                            var o = [],
                                r = !0,
                                a = !1,
                                n = void 0;
                            try {
                                for (var i, h = e[Symbol.iterator](); !(r = (i = h.next()).done) && (o.push(i.value), !t || o.length !== t); r = !0)
                                    ;
                            } catch (e) {
                                a = !0,
                                n = e
                            } finally {
                                try {
                                    !r && h.return && h.return()
                                } finally {
                                    if (a)
                                        throw n
                                }
                            }
                            return o
                        }(e, t);
                    throw new TypeError("Invalid attempt to destructure non-iterable instance")
                }
            }(),
            a = function() {
                function e(e, t) {
                    for (var o = 0; o < t.length; o++) {
                        var r = t[o];
                        r.enumerable = r.enumerable || !1,
                        r.configurable = !0,
                        "value" in r && (r.writable = !0),
                        Object.defineProperty(e, r.key, r)
                    }
                }
                return function(t, o, r) {
                    return o && e(t.prototype, o), r && e(t, r), t
                }
            }(),
            n = h(o(381)),
            i = h(o(394));
        function h(e) {
            return e && e.__esModule ? e : {
                default: e
            }
        }
        var s = function(e) {
            function t() {
                var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : document,
                    o = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : null;
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, t);
                var r = function(e, t) {
                    if (!e)
                        throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
                    return !t || "object" != typeof t && "function" != typeof t ? e : t
                }(this, (t.__proto__ || Object.getPrototypeOf(t)).call(this, o));
                return r.scope = e, r.jobCategorySearchModel = new i.default, r.categorySection = r.scope.querySelector("#search_form_recruit .option_category"), r.init(), r
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
            }(t, n.default), a(t, [{
                key: "init",
                value: function() {
                    var e = this;
                    this.setDefaultJobCondition(),
                    this.categorySection.addEventListener("click", function t(o) {
                        o.preventDefault(),
                        e.importJobCategoryJs().then(function(t) {
                            var o = r(t, 6),
                                a = o[0],
                                n = o[1],
                                i = o[2],
                                h = o[3],
                                s = o[4],
                                c = o[5];
                            e.searchPanel = new a.default(e.categorySection, e.searchService.getPanelType()),
                            e.depth1Layer = new h.default(Array.from(e.categorySection.querySelectorAll(".details .categories"))[0]),
                            e.depth2Layer = new h.default(Array.from(e.categorySection.querySelectorAll(".details .categories"))[1]),
                            e.depth3Layer = new i.default(e.categorySection.querySelector(".details .filters")),
                            e.directLayer = new n.default(e.categorySection.querySelector(".quick .direct")),
                            e.jobCategoryHistory = new s.default(e.categorySection.querySelector(".quick .lately")),
                            e.jobCategoryInput || (e.jobCategoryInput = new c.default(e.categorySection.querySelector("#ipt_category_recruit"))),
                            e.bindJobInitialEvents(),
                            e.searchPanel.activeOption(),
                            e.depth1Layer.moveScrollToSelectedDepth(),
                            e.depth2Layer.moveScrollToSelectedDepth()
                        }),
                        o.currentTarget.removeEventListener(o.type, t)
                    })
                }
            }, {
                key: "setDefaultJobCondition",
                value: function() {
                    var e = this,
                        t = void 0 !== window.searchPanelDefaultCondition ? window.searchPanelDefaultCondition.jik : "";
                    t && (this.searchService.setSearchType(window.searchPanelDefaultCondition.type || ""), o.e(24).then(o.t.bind(null, 382, 7)).then(function(o) {
                        e.jobCategoryInput = new o.default(e.categorySection.querySelector("#ipt_category_recruit")),
                        t.split(",").map(function(t) {
                            return e.jobCategorySearchModel.addJobSearchCondition(t.toString())
                        }),
                        e.jobCategoryInput.setInputValue(e.jobCategorySearchModel.getCheckedData(), "직업");
                        var r = e.jobCategorySearchModel.getState();
                        e.searchService.setJobCondition(r.checkedDepth3);
                        var a = Object.keys(r.selectedDepth1);
                        a.length && e.jobCategorySearchModel.setState({
                            showDepth1: a[0],
                            showDepth2: a.reduce(function(e, t) {
                                var o = Object.values(r.selectedDepth2).find(function(e) {
                                    return e.bcode === t.toString()
                                });
                                return o && (e[o.bcode] = o.code), e
                            }, {})
                        })
                    }))
                }
            }, {
                key: "importJobCategoryJs",
                value: function() {
                    return Promise.all([o.e(27).then(o.t.bind(null, 384, 7)), o.e(23).then(o.t.bind(null, 390, 7)), o.e(22).then(o.t.bind(null, 389, 7)), o.e(21).then(o.t.bind(null, 388, 7)), o.e(20).then(o.t.bind(null, 387, 7)), o.e(24).then(o.t.bind(null, 382, 7))])
                }
            }, {
                key: "bindJobInitialEvents",
                value: function() {
                    var e = this;
                    this.depth1Layer.setList(this.jobCategorySearchModel.getDepth1Array()),
                    this.jobCategoryHistory.setHistory(this.jobCategorySearchModel.getSearchJobHistory()),
                    this.jobCategoryInput.on("@onClickAreaJobInput", function() {
                        return e.jobCategorySearchModel.getState("openLayer") ? e.searchPanel.inActiveOption() : e.searchPanel.activeOption()
                    }),
                    this.searchPanel.on("@onClickPanel", function(t) {
                        return e.directLayer.closeLayerWhenClickOutside(t.detail.target)
                    }).on("@onTogglePanel", function(t) {
                        return e.setPanelOpenState(t.detail.open)
                    }),
                    this.jobCategoryHistory.on("@onClickHistory", function(t) {
                        return e.addJobConditionAndSetPanelState(t.detail.code, "job_recently", t.detail.count)
                    }),
                    this.directLayer.on("@onKeyUpDirectInput", function(t) {
                        return e.renderJobAutoComplete(t.detail.keyword)
                    }).on("@onOpenDirectLayer", function() {
                        return e.directLayer.setDirectCheckBoxesState(e.jobCategorySearchModel.getState("checkedDepth3"))
                    }).on("@onCheckDirectCondition", function(t) {
                        return t.detail.checked ? e.addJobConditionAndSetPanelState(t.detail.code, "job_inputbox") : e.removeJobConditionAndSetPanelState(t.detail.code)
                    }),
                    this.depth1Layer.on("@onClickDepthDivision", function(t) {
                        var o = e.jobCategorySearchModel.getState();
                        o.showDepth1 !== t.detail.code && (e.jobCategorySearchModel.setState({
                            showDepth1: t.detail.code
                        }), e.renderDepth2(), e.renderDepth3(), e.setJobPanelState(), o.expandLayer ? e.expandLayer() : e.depth2Layer.moveScrollToSelectedDepth())
                    }),
                    this.depth2Layer.on("@onClickDepthDivision", function(t) {
                        var o = e.jobCategorySearchModel.getState();
                        o.showDepth2[o.showDepth1] !== t.detail.code && (o.showDepth2[o.showDepth1] = t.detail.code, !o.selectedDepth2.hasOwnProperty(t.detail.code) && o.checkedDepth3.length < 10 && e.addJobConditionAndSetPanelState(t.detail.code, "job_category"), e.renderDepth3(), e.setJobPanelState(), o.expandLayer && e.expandLayer())
                    }),
                    this.depth3Layer.on("@onCheckCondition", function(t) {
                        return t.detail.checked ? e.addJobConditionAndSetPanelState(t.detail.code, "job_category") : e.removeJobConditionAndSetPanelState(t.detail.code)
                    }).on("@onClickExpandBtn", function() {
                        return e.expandShrinkLayer()
                    }),
                    this.renderDepth2(),
                    this.renderDepth3(),
                    this.setJobPanelState(),
                    this.depth2Layer.moveScrollToSelectedDepth()
                }
            }, {
                key: "addJobConditionAndSetPanelState",
                value: function(e, t) {
                    var o = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : "",
                        r = this.jobCategorySearchModel.getState("checkedDepth3").slice(0);
                    this.jobCategorySearchModel.addJobSearchCondition(e),
                    this.trackEventIfAddedDepth(r, t, o),
                    this.searchService.setJobCondition(this.jobCategorySearchModel.getState("checkedDepth3")),
                    this.setJobPanelState()
                }
            }, {
                key: "trackEventIfAddedDepth",
                value: function(e, t) {
                    var o = this,
                        r = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : "";
                    this.jobCategorySearchModel.getState("checkedDepth3").filter(function(t) {
                        return -1 === e.indexOf(t)
                    }).forEach(function(e) {
                        return r ? o.trackEventAndPushData(t, r) : o.trackEventAndPushData(t, e.code)
                    })
                }
            }, {
                key: "removeJobConditionAndSetPanelState",
                value: function(e) {
                    this.jobCategorySearchModel.removeJobSearchCondition(e),
                    this.searchService.setJobCondition(this.jobCategorySearchModel.getState("checkedDepth3")),
                    this.setJobPanelState()
                }
            }, {
                key: "setJobPanelState",
                value: function() {
                    var e = this.jobCategorySearchModel.getState();
                    this.depth2Layer && this.depth2Layer.setShowCode(e.showDepth2[e.showDepth1]),
                    this.depth1Layer && this.depth1Layer.setSelectedState(e.selectedDepth1),
                    this.depth2Layer && this.depth2Layer.setSelectedState(e.selectedDepth2),
                    this.depth3Layer && this.depth3Layer.setCheckBoxesState(e.checkedDepth3),
                    this.directLayer && this.directLayer.setDirectCheckBoxesState(e.checkedDepth3),
                    this.jobCategoryInput && this.jobCategoryInput.setInputValue(this.jobCategorySearchModel.getCheckedData(), "직업")
                }
            }, {
                key: "renderDepth2",
                value: function() {
                    var e = this.jobCategorySearchModel.getState("showDepth1");
                    this.depth1Layer.setShowCode(e),
                    this.depth2Layer.setList(this.jobCategorySearchModel.getDepth2List(e))
                }
            }, {
                key: "renderDepth3",
                value: function() {
                    var e = this.jobCategorySearchModel.getState();
                    if (e.showDepth2.hasOwnProperty(e.showDepth1) && 0 !== e.showDepth2[e.showDepth1]) {
                        var t = this.jobCategorySearchModel.getDepth2(e.showDepth2[e.showDepth1]);
                        this.depth2Layer.setShowCode(e.showDepth2[e.showDepth1]),
                        this.depth3Layer.hideSelectTextGuide(),
                        this.depth3Layer.setList(t.keyword)
                    } else
                        this.depth3Layer.showSelectTextGuide()
                }
            }, {
                key: "renderJobAutoComplete",
                value: function(e) {
                    var t = this;
                    this.jobCategorySearchModel.searchJobAutoCompleteList(e).then(function(o) {
                        t.directLayer.setList(o.list, e),
                        0 !== Object.keys(o).length && 0 !== o.count ? t.directLayer.showSuggestionList() : t.directLayer.showEmptyText()
                    }).catch(function() {
                        return !1
                    })
                }
            }, {
                key: "setPanelOpenState",
                value: function() {
                    arguments.length > 0 && void 0 !== arguments[0] && arguments[0] ? (this.jobCategorySearchModel.setState({
                        openLayer: !0
                    }), this.searchService.setSearchActiveFlag(!0)) : (this.jobCategorySearchModel.setState({
                        openLayer: !1
                    }), this.directLayer.closeLayer(), this.searchService.isFixedHeader() && this.shrinkLayer())
                }
            }, {
                key: "expandShrinkLayer",
                value: function() {
                    this.jobCategorySearchModel.getState("expandLayer") ? this.shrinkLayer() : (this.trackEventAndPushData("job_open"), this.expandLayer())
                }
            }, {
                key: "expandLayer",
                value: function() {
                    var e = Math.max(this.depth1Layer.getOffsetHeight(), this.depth2Layer.getOffsetHeight(), this.depth3Layer.getOffsetHeight(), this.LAYER_HEIGHT);
                    this.categorySection.querySelector(".details").style.height = "auto",
                    this.depth1Layer.setHeight(e),
                    this.depth2Layer.setHeight(e),
                    this.depth3Layer.setHeight(e),
                    this.depth3Layer.setExpandState(),
                    this.jobCategorySearchModel.setState({
                        expandLayer: !0
                    }),
                    window.dispatchEvent(new CustomEvent("resize"))
                }
            }, {
                key: "shrinkLayer",
                value: function() {
                    this.categorySection.querySelector(".details").style.height = "",
                    this.depth1Layer.setHeight(this.LAYER_HEIGHT),
                    this.depth2Layer.setHeight(this.LAYER_HEIGHT),
                    this.depth3Layer.setHeight(this.LAYER_HEIGHT),
                    this.depth3Layer.setShrinkState(),
                    this.jobCategorySearchModel.setState({
                        expandLayer: !1
                    }),
                    window.dispatchEvent(new CustomEvent("resize")),
                    this.depth1Layer.moveScrollToSelectedDepth(),
                    this.depth2Layer.moveScrollToSelectedDepth()
                }
            }, {
                key: "resetState",
                value: function() {
                    this.jobCategorySearchModel.resetState(),
                    this.searchService.setJobCondition([]),
                    this.setJobPanelState(),
                    this.depth1Layer && this.depth2Layer && this.depth3Layer && (this.renderDepth2(), this.renderDepth3())
                }
            }]), t
        }();
        t.default = s
    },
    381: function(e, t, o) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var r = function() {
                function e(e, t) {
                    for (var o = 0; o < t.length; o++) {
                        var r = t[o];
                        r.enumerable = r.enumerable || !1,
                        r.configurable = !0,
                        "value" in r && (r.writable = !0),
                        Object.defineProperty(e, r.key, r)
                    }
                }
                return function(t, o, r) {
                    return o && e(t.prototype, o), r && e(t, r), t
                }
            }(),
            a = o(18),
            n = function(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }(o(130));
        var i = function() {
            function e() {
                var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null;
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, e),
                this.searchService = t || new n.default,
                this.LAYER_HEIGHT = 231
            }
            return r(e, [{
                key: "trackEventAndPushData",
                value: function(e) {
                    var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "",
                        o = "",
                        r = "",
                        n = "";
                    this.searchService.isCompanyLogin() && this.searchService.isTalentPanel() ? (r = "talent_search_tab", n = o = this.searchService.isFixedHeader() ? "company-main_gnb_fixed" : "company-main") : (o = "panel_search", r = this.searchService.isFixedHeader() ? "main_gnb_fixed" : "main", n = this.searchService.isFixedHeader() ? "panel_search_main_gnb_fixed" : "panel_search_main"),
                    (0, a.nTrackEvent)(o, r, e, t),
                    (0, a.pushDataLayer)("ga_lead", n, e, t)
                }
            }, {
                key: "resetState",
                value: function() {
                    throw new Error("abstract method")
                }
            }]), e
        }();
        t.default = i
    },
    394: function(e, t, o) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var r = function() {
                function e(e, t) {
                    for (var o = 0; o < t.length; o++) {
                        var r = t[o];
                        r.enumerable = r.enumerable || !1,
                        r.configurable = !0,
                        "value" in r && (r.writable = !0),
                        Object.defineProperty(e, r.key, r)
                    }
                }
                return function(t, o, r) {
                    return o && e(t.prototype, o), r && e(t, r), t
                }
            }(),
            a = o(18);
        var n = function() {
            function e() {
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, e),
                this.jobCategory = void 0 !== window.searchPanelJobCategoryList ? window.searchPanelJobCategoryList.job_category : {},
                this.depth1List = void 0 !== window.searchPanelJobCategoryList ? window.searchPanelJobCategoryList.job_category_1depth_text : {},
                this.depth1CodeList = void 0 !== window.searchPanelJobCategoryList ? window.searchPanelJobCategoryList.job_category_1depth : {},
                this.jobLatestList = void 0 !== window.searchPanelJobLatestList ? window.searchPanelJobLatestList : {},
                this.MAX_COUNT = 10,
                this.MAX_COUNT_MESSAGE = "직종은 " + this.MAX_COUNT + "개까지 선택 가능합니다.",
                window.searchPanelJobCategoryList = null,
                window.searchPanelJobLatestList = null,
                this.resetState()
            }
            return r(e, [{
                key: "addJobSearchCondition",
                value: function(e) {
                    if (!(0, a.hasItemInObjectArray)(this.state.checkedDepth3, e, "code")) {
                        var t = Object.assign({}, this.state.selectedDepth1),
                            o = Object.assign({}, this.state.selectedDepth2),
                            r = this.state.checkedDepth3.slice(0),
                            n = this.getDepth3(e);
                        if (Object.keys(n).length)
                            return (n.bcode === e || (0, a.hasItemInObjectArray)(this.state.checkedDepth3, n.bcode, "code")) && (delete this.state.selectedDepth2[n.bcode], (0, a.hasItemInObjectArray)(this.state.checkedDepth3, n.bcode, "bcode") && (this.state.checkedDepth3 = this.state.checkedDepth3.filter(function(e) {
                                return e.bcode !== n.bcode
                            }))), this.state.checkedDepth3.push(n), this.addSelectedDepth1(n.mcode), this.addSelectedDepth2(n.bcode), this.state.checkedDepth3.length > this.MAX_COUNT ? (this.state.selectedDepth1 = t, this.state.selectedDepth2 = o, this.state.checkedDepth3 = r, alert(this.MAX_COUNT_MESSAGE)) : void 0
                    }
                }
            }, {
                key: "getDepth3",
                value: function(e) {
                    var t = this.getDepth2List(this.getDepth1CodeByChildDepthCode(e));
                    for (var o in t)
                        if (t.hasOwnProperty(o) && t[o].hasOwnProperty("keyword")) {
                            var r = t[o].keyword.filter(function(t) {
                                return t.code === e
                            });
                            if (r.length > 0)
                                return r[0]
                        }
                    return {}
                }
            }, {
                key: "getDepth2List",
                value: function(e) {
                    return this.jobCategory.hasOwnProperty(e) ? this.jobCategory[e] : []
                }
            }, {
                key: "getDepth1CodeByChildDepthCode",
                value: function(e) {
                    return parseInt(e) && this.depth1CodeList.hasOwnProperty(e) ? this.depth1CodeList[e] : "0"
                }
            }, {
                key: "addSelectedDepth1",
                value: function(e) {
                    this.state.selectedDepth1.hasOwnProperty(e) || (this.state.selectedDepth1[e] = this.getDepth1(e))
                }
            }, {
                key: "getDepth1",
                value: function(e) {
                    return this.depth1List.filter(function(t) {
                        return t.code.toString() === e
                    })[0]
                }
            }, {
                key: "addSelectedDepth2",
                value: function(e) {
                    this.state.selectedDepth2.hasOwnProperty(e) || (this.state.selectedDepth2[e] = this.getDepth2(e))
                }
            }, {
                key: "getDepth2",
                value: function(e) {
                    var t = Array.from(this.getDepth2List(this.getDepth1CodeByChildDepthCode(e))).filter(function(t) {
                        return t.code === e
                    });
                    return 0 !== t.length ? t[0] : {}
                }
            }, {
                key: "removeJobSearchCondition",
                value: function(e) {
                    var t = this;
                    this.state.checkedDepth3.some(function(o, r) {
                        if (o.code === e)
                            return t.state.checkedDepth3.splice(r, 1), (0, a.hasItemInObjectArray)(t.state.checkedDepth3, o.mcode, "mcode") || delete t.state.selectedDepth1[o.mcode], (0, a.hasItemInObjectArray)(t.state.checkedDepth3, o.bcode, "bcode") || delete t.state.selectedDepth2[o.bcode], !0
                    })
                }
            }, {
                key: "getSearchJobHistory",
                value: function() {
                    var e = [],
                        t = {};
                    for (var o in this.jobLatestList)
                        this.jobLatestList[o].hasOwnProperty("code") && parseInt(this.jobLatestList[o].code) && (t = this.getDepth3(this.jobLatestList[o].code)),
                        Object.keys(t).length && e.push(t);
                    return e
                }
            }, {
                key: "searchJobAutoCompleteList",
                value: function(e) {
                    var t = this;
                    return this.previousKeyword === e ? this.autoCompletePromise : (this.previousKeyword = e, this.abortRequestIfHasRequest(), this.abortController = new AbortController, this.autoCompletePromise = fetch("/zf_user/index/job-auto-complete?" + (0, a.buildQueryString)({
                        keyword: e
                    }), {
                        signal: this.abortController.signal
                    }).then(function(e) {
                        return e.json()
                    }).then(function(e) {
                        t.abortController = null;
                        var o = {
                            count: 0,
                            list: {}
                        };
                        if (void 0 === e || null === e)
                            return o;
                        var r = e.result_list;
                        for (var a in r)
                            0 !== Object.keys(t.getDepth3(r[a].code)).length && (o.list[r[a].code] = {
                                name: r[a].text,
                                code: r[a].code
                            });
                        return o.count = Object.keys(o.list).length, o
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
                    return this.depth1List
                }
            }, {
                key: "getCheckedData",
                value: function() {
                    return {
                        list: this.state.checkedDepth3,
                        count: this.state.checkedDepth3.length
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
                key: "resetState",
                value: function() {
                    this.state = {
                        showDepth1: 1,
                        showDepth2: {},
                        selectedDepth1: {},
                        selectedDepth2: {},
                        checkedDepth3: [],
                        openLayer: !1,
                        expandLayer: !1
                    }
                }
            }]), e
        }();
        t.default = n
    }
}]);

