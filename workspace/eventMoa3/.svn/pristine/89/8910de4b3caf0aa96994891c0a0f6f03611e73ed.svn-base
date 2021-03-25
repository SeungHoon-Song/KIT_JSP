(window.webpackJsonp = window.webpackJsonp || []).push([[3], {
    367: function(e, t, r) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var n = function() {
                return function(e, t) {
                    if (Array.isArray(e))
                        return e;
                    if (Symbol.iterator in Object(e))
                        return function(e, t) {
                            var r = [],
                                n = !0,
                                i = !1,
                                o = void 0;
                            try {
                                for (var a, s = e[Symbol.iterator](); !(n = (a = s.next()).done) && (r.push(a.value), !t || r.length !== t); n = !0)
                                    ;
                            } catch (e) {
                                i = !0,
                                o = e
                            } finally {
                                try {
                                    !n && s.return && s.return()
                                } finally {
                                    if (i)
                                        throw o
                                }
                            }
                            return r
                        }(e, t);
                    throw new TypeError("Invalid attempt to destructure non-iterable instance")
                }
            }(),
            i = function() {
                function e(e, t) {
                    for (var r = 0; r < t.length; r++) {
                        var n = t[r];
                        n.enumerable = n.enumerable || !1,
                        n.configurable = !0,
                        "value" in n && (n.writable = !0),
                        Object.defineProperty(e, n.key, n)
                    }
                }
                return function(t, r, n) {
                    return r && e(t.prototype, r), n && e(t, n), t
                }
            }(),
            o = u(r(381)),
            a = u(r(397)),
            s = u(r(396)),
            c = u(r(386));
        function u(e) {
            return e && e.__esModule ? e : {
                default: e
            }
        }
        var l = function(e) {
            function t(e, r) {
                var n = r.authService,
                    i = r.searchService,
                    o = void 0 === i ? null : i;
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, t);
                var s = function(e, t) {
                    if (!e)
                        throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
                    return !t || "object" != typeof t && "function" != typeof t ? e : t
                }(this, (t.__proto__ || Object.getPrototypeOf(t)).call(this, o));
                return s.authService = n, s.search = e, s.searchForm = e.querySelector("#search_form_recruit"), s.keywordRecruit = e.querySelector("#ipt_keyword_recruit"), s.searchOpenBtn = document.getElementById("search_open"), s.sriMain = document.getElementById("sri_main"), s.headerMain = document.getElementById("header_main"), s.gnbSearch = document.getElementById("search"), s.isCtrl = !1, s.isAlt = !1, s.keywordSearchModel = new a.default, s.init(), s.bindKeywordAreaEvents(), s
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
            }(t, o.default), i(t, [{
                key: "init",
                value: function() {
                    this.keywordSection = this.searchForm.querySelector(".option_keyword"),
                    this.inputLayer = new s.default(this.keywordSection.querySelector("#ipt_keyword_recruit")),
                    this.searchBtn = this.search.querySelector("#btn_search_recruit");
                    var e = void 0 !== window.searchPanelDefaultCondition ? window.searchPanelDefaultCondition.keyword : "";
                    e && (this.searchService.setSearchType(window.searchPanelDefaultCondition.type || ""), this.keywordSearchModel.setState({
                        keyword: e
                    })),
                    this.bindKeywordInputEvents()
                }
            }, {
                key: "getConstructorViewsAndInitEvents",
                value: function() {
                    var e = this;
                    return function t(r) {
                        void 0 === e.searchPanel && (r.preventDefault(), e.keywordSection.removeEventListener("click", t), e.inputLayer.el.removeEventListener("keyup", t), e.importKeywordPanelJs().then(function(t) {
                            var i = n(t, 2),
                                o = i[0],
                                a = i[1];
                            e.searchPanel = new o.default(e.keywordSection, e.searchService.getPanelType(), e.searchService.isCompanyLogin()),
                            e.suggestionLayer = new a.default(e.keywordSection.querySelector(".panel_mysearch")),
                            e.authService.isCompanyLogin() || e.renderFavorCompanies(),
                            e.bindKeywordPanelEvents(),
                            r.target === e.sriMain && "keydown" === r.type && e.setKeydownTextAndFlag(r.key)
                        }))
                    }
                }
            }, {
                key: "bindKeywordInputEvents",
                value: function() {
                    var e = this,
                        t = this.getConstructorViewsAndInitEvents();
                    this.keywordSection.addEventListener("click", t),
                    this.inputLayer.el.addEventListener("keyup", t),
                    this.searchBtn.addEventListener("click", function() {
                        return e.searchSubmit()
                    }),
                    this.search.querySelector("#search_close_recruit").addEventListener("click", function() {
                        e.trackEventAndPushData("close_search"),
                        e.searchOpenBtn.innerText = e.inputLayer.el.value ? e.inputLayer.el.value : "검색어 입력",
                        e.searchService.setSearchActiveFlag(!1),
                        e.search.classList.remove("active")
                    }),
                    this.inputLayer.setSearchKeyword(this.keywordSearchModel.getState("keyword")),
                    this.keywordSection.querySelector("#ipt_keyword_recruit").focus()
                }
            }, {
                key: "bindKeywordAreaEvents",
                value: function() {
                    var e = this;
                    this.searchForm.addEventListener("submit", function(e) {
                        return e.preventDefault()
                    }),
                    this.search.addEventListener("@onUnFixHeader", function() {
                        return e.searchService.setFixHeaderFlag(!1)
                    }),
                    this.search.addEventListener("@onFixHeader", function() {
                        e.searchOpenBtn.innerText = e.inputLayer.el.value ? e.inputLayer.el.value : "검색어를 입력해주세요",
                        e.searchService.setFixHeaderFlag(!0),
                        e.searchService.getSearchActiveFlag() ? e.search.classList.add("active") : e.search.classList.remove("active")
                    }),
                    this.searchOpenBtn.addEventListener("click", function() {
                        e.searchService.setSearchActiveFlag(!0),
                        e.search.classList.add("active")
                    }),
                    this.sriMain.addEventListener("keydown", function(t) {
                        e.onKeydownFastSearch(t)
                    }),
                    this.keywordRecruit.addEventListener("click", function(t) {
                        e.searchService.setKeydownAccessFlag(!1)
                    }),
                    this.sriMain.addEventListener("keyup", function() {
                        e.isCtrl = !1,
                        e.isAlt = !1
                    })
                }
            }, {
                key: "importKeywordPanelJs",
                value: function() {
                    return Promise.all([r.e(27).then(r.t.bind(null, 384, 7)), r.e(26).then(r.t.bind(null, 393, 7))])
                }
            }, {
                key: "bindKeywordPanelEvents",
                value: function() {
                    var e = this;
                    this.searchPanel.on("@onTogglePanel", function(t) {
                        return e.setPanelOpenState(t.detail.open)
                    }),
                    this.inputLayer.on("@onSubmitSearch", function() {
                        return e.searchSubmit()
                    }).on("@onKeyUpMove", function(t) {
                        e.keywordSearchModel.getState("openLayer") && e.suggestionLayer.moveFocusKeyword(t.detail.keyCode)
                    }).on("@onClickKeywordInput", function(t) {
                        e.keywordSearchModel.setState({
                            keyword: t.detail.keyword
                        }),
                        e.searchService.setInputKeyword(t.detail.keyword),
                        e.focusKeywordInput()
                    }).on("@onKeyUpInputKeyword", function(t) {
                        e.keywordSearchModel.setState({
                            keyword: t.detail.keyword
                        }),
                        e.searchService.setInputKeyword(t.detail.keyword),
                        e.searchService.setSearchType("search"),
                        e.renderSuggestionPanel()
                    }),
                    this.suggestionLayer.on("@onClickCloseBtn", function() {
                        return e.searchPanel.inActiveOption()
                    }).on("@onClickDeleteHistory", function(t) {
                        return e.deleteHistoryKeyword(t)
                    }).on("@onClickAutoCompleteActiveBtn", function() {
                        return e.setSuggestionActive()
                    }).on("@onFocusSuggestionList", function(t) {
                        e.setKeyword(t.detail.keyword),
                        e.searchService.setSearchType(t.detail.type)
                    }).on("@onClickSuggestionKeyword", function(t) {
                        "auto" === t.detail.type ? e.trackEventAndPushData("auto_keyword_search", t.detail.keyword) : e.trackEventAndPushData("keyword_search", t.detail.keyword),
                        e.setKeyword(t.detail.keyword),
                        e.searchService.setSearchType(t.detail.type),
                        e.searchPanel.inActiveOption()
                    }),
                    this.inputLayer.el.click(),
                    this.keywordSearchModel.setState({
                        keyword: this.inputLayer.el.value
                    }),
                    this.searchService.setInputKeyword(this.inputLayer.el.value)
                }
            }, {
                key: "setKeyword",
                value: function(e) {
                    this.inputLayer.setSearchKeyword(e),
                    this.searchService.setInputKeyword(e),
                    this.keywordSearchModel.setState({
                        keyword: e
                    })
                }
            }, {
                key: "deleteHistoryKeyword",
                value: function(e) {
                    this.keywordSearchModel.removeKeywordHistory(e.detail.keyword),
                    this.suggestionLayer.removeHistory(e.detail.keyword),
                    this.suggestionLayer.onSuggestion(),
                    this.renderHistoryPanel()
                }
            }, {
                key: "setSuggestionActive",
                value: function() {
                    if (this.keywordSearchModel.getState("suggestionActive"))
                        return this.keywordSearchModel.deactivateSuggestion(), void this.suggestionLayer.offSuggestion();
                    this.keywordSearchModel.activateSuggestion(),
                    this.renderSuggestionPanel()
                }
            }, {
                key: "focusKeywordInput",
                value: function() {
                    this.keywordSearchModel.getState("openLayer") ? this.searchPanel.inActiveOption() : (this.inputLayer.el.select(), this.renderSuggestionPanel())
                }
            }, {
                key: "renderHistoryPanel",
                value: function() {
                    var e = this;
                    this.keywordSearchModel.getKeywordsHistoryList().then(function(t) {
                        t.count <= 0 ? e.searchPanel.inActiveOption() : (e.suggestionLayer.setHistoryList(t.list), e.searchPanel.activeOption())
                    }).catch(function() {
                        return !1
                    })
                }
            }, {
                key: "renderAutoCompletePanel",
                value: function() {
                    var e = this;
                    this.keywordSearchModel.getAutoCompleteList().then(function(t) {
                        t.count <= 0 ? e.searchPanel.inActiveOption() : (e.suggestionLayer.setRecruitAutoCompleteList(t.list, e.keywordSearchModel.getState("keyword")), e.searchPanel.activeOption())
                    }).catch(function() {
                        return !1
                    })
                }
            }, {
                key: "renderSuggestionPanel",
                value: function() {
                    this.searchService.setSearchActiveFlag(!0);
                    var e = this.keywordSearchModel.getState();
                    return e.suggestionActive ? (this.suggestionLayer.onSuggestion(), e.keyword.length > 0 ? this.renderAutoCompletePanel() : this.renderHistoryPanel()) : e.keyword.length > 0 ? this.searchPanel.inActiveOption() : (this.suggestionLayer.offSuggestion(), void this.searchPanel.activeOption())
                }
            }, {
                key: "setPanelOpenState",
                value: function() {
                    arguments.length > 0 && void 0 !== arguments[0] && arguments[0] ? this.keywordSearchModel.setState({
                        openLayer: !0
                    }) : this.keywordSearchModel.setState({
                        openLayer: !1
                    })
                }
            }, {
                key: "searchSubmit",
                value: function() {
                    this.searchService.setInputKeyword(this.inputLayer.el.value);
                    var e = this.searchService.getSearchUrl();
                    this.setAccessData(),
                    window.document.location.href = "/zf_user/search?search_area=main" + (e ? "&" + e : "")
                }
            }, {
                key: "setAccessData",
                value: function() {
                    if (window.searchPanelDefaultCondition.keyword !== this.inputLayer.el.value && "" !== this.inputLayer.el.value)
                        try {
                            window.dataLayer.push({
                                event: "ga_lead",
                                category: "search_access",
                                "event-flow": "main",
                                "event-label": this.searchService.isKeydownAccess() ? "keydown" : "click"
                            })
                        } catch (e) {}
                }
            }, {
                key: "resetState",
                value: function() {
                    this.keywordSearchModel.resetState(),
                    this.inputLayer.setSearchKeyword(this.keywordSearchModel.getState("keyword"))
                }
            }, {
                key: "renderOneClickSearchNudge",
                value: function() {
                    var e = this.searchForm.querySelector(".main_search"),
                        t = document.createElement("div");
                    t.classList.add("nudge_total_search"),
                    t.innerHTML = '<b>클릭 한번으로!</b><br>내게 맞는 검색결과 확인<button type="button" class="btn_close"><span class="blind">닫기</span></button>',
                    e.insertAdjacentElement("beforeend", t),
                    t.classList.add("bounce"),
                    t.querySelector(".btn_close").addEventListener("click", function(e) {
                        e.target.blur(),
                        t.classList.add("outro"),
                        setTimeout(function() {
                            t.style.display = "none"
                        }, 1e3)
                    }),
                    t.addEventListener("animationend", function(e) {
                        "nudgeBounce" === e.animationName ? t.classList.add("outro") : "nudgeOutro" === e.animationName ? t.classList.add("hide") : "nudgeHide" === e.animationName && (t.style.display = "none")
                    })
                }
            }, {
                key: "renderFavorCompanies",
                value: function() {
                    var e = this;
                    r.e(25).then(r.t.bind(null, 392, 7)).then(function(t) {
                        e.favorCompanyLayer = new t.default(e.keywordSection.querySelector(".panel_myinterest")),
                        e.bindFavorCompanyLayerEvents()
                    })
                }
            }, {
                key: "bindFavorCompanyLayerEvents",
                value: function() {
                    var e = this;
                    this.favorCompanyLayer && (this.favorCompanyLayer.on("@onClickLoginBtn", function() {
                        e.authService.showLoginLayer({
                            category: "favor"
                        })
                    }), this.favorCompanyLayer.on("@onClickFavorCompany", function(t) {
                        var r = e.searchService.makeSearchParameter({
                                searchKeyword: t.detail.companyName,
                                searchType: "favor_company"
                            }),
                            n = e.searchService.getSearchUrl(r);
                        window.document.location.href = "/zf_user/search?search_area=main" + (n ? "&" + n : "")
                    }), this.authService.isPersonLogin() ? c.default.favorList.then(function(t) {
                        return e.favorCompanyLayer.renderCompanies(t)
                    }) : this.favorCompanyLayer.renderLogin())
                }
            }, {
                key: "onKeydownFastSearch",
                value: function(e) {
                    var t = document.activeElement.tagName;
                    "INPUT" !== t && "TEXTAREA" !== t && "SELECT" !== t && (17 !== e.keyCode ? 18 !== e.keyCode ? this.isCtrl || this.isAlt || (e.keyCode >= 48 && e.keyCode <= 57 || e.keyCode >= 65 && e.keyCode <= 90 || e.keyCode >= 96 && e.keyCode <= 105) && (this.isExceptLayer() || (this.headerMain.classList.contains("fixed") && !this.gnbSearch.classList.contains("active") && this.gnbSearch.classList.add("active"), void 0 !== this.searchPanel ? (this.setKeydownTextAndFlag(e.key), e.preventDefault()) : this.getConstructorViewsAndInitEvents()(e))) : this.isAlt = !0 : this.isCtrl = !0)
                }
            }, {
                key: "setKeydownTextAndFlag",
                value: function(e) {
                    this.keywordRecruit.value = e,
                    this.keywordRecruit.focus(),
                    this.searchService.setKeydownAccessFlag(!0)
                }
            }, {
                key: "isExceptLayer",
                value: function() {
                    var e = !1;
                    return ["pop_login_layer", "iframe_layer", "lpop_ongoing", "lpop_corp_info"].forEach(function(t) {
                        $("." + t).is(":visible") && (e = !0)
                    }), $(".wrap_total_menu").hasClass("layer_on") && (e = !0), e
                }
            }]), t
        }();
        t.default = l
    },
    381: function(e, t, r) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var n = function() {
                function e(e, t) {
                    for (var r = 0; r < t.length; r++) {
                        var n = t[r];
                        n.enumerable = n.enumerable || !1,
                        n.configurable = !0,
                        "value" in n && (n.writable = !0),
                        Object.defineProperty(e, n.key, n)
                    }
                }
                return function(t, r, n) {
                    return r && e(t.prototype, r), n && e(t, n), t
                }
            }(),
            i = r(18),
            o = function(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }(r(130));
        var a = function() {
            function e() {
                var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : null;
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, e),
                this.searchService = t || new o.default,
                this.LAYER_HEIGHT = 231
            }
            return n(e, [{
                key: "trackEventAndPushData",
                value: function(e) {
                    var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "",
                        r = "",
                        n = "",
                        o = "";
                    this.searchService.isCompanyLogin() && this.searchService.isTalentPanel() ? (n = "talent_search_tab", o = r = this.searchService.isFixedHeader() ? "company-main_gnb_fixed" : "company-main") : (r = "panel_search", n = this.searchService.isFixedHeader() ? "main_gnb_fixed" : "main", o = this.searchService.isFixedHeader() ? "panel_search_main_gnb_fixed" : "panel_search_main"),
                    (0, i.nTrackEvent)(r, n, e, t),
                    (0, i.pushDataLayer)("ga_lead", o, e, t)
                }
            }, {
                key: "resetState",
                value: function() {
                    throw new Error("abstract method")
                }
            }]), e
        }();
        t.default = a
    },
    386: function(e, t, r) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var n = r(18);
        t.default = {
            add: function(e) {
                return fetch("/zf_user/member/favor-company/set-favor-company-ajax", {
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded"
                    },
                    method: "POST",
                    body: (0, n.buildQueryString)(e),
                    credentials: "include"
                }).then(function(e) {
                    return e.json()
                })
            },
            getLoginStatus: function() {
                return fetch("/zf_user/recruit/push-service-login-status", {
                    credentials: "include"
                }).then(function(e) {
                    return e.json()
                })
            },
            get favorList() {
                return fetch("/zf_user/member/favor-company/get-favor-company-list-ajax?" + (0, n.buildQueryString)({
                    count: 10
                }), {
                    credentials: "include"
                }).then(function(e) {
                    return e.json()
                }).then(function(e) {
                    if (!e || 200 !== e.response.code)
                        throw new Error("관심 기업 요청에 실패했습니다.");
                    return e.response.data.result_list.slice(0, 10).map(function(e) {
                        return {
                            name: e.company_nm,
                            filteredName: e.filtered_company_nm
                        }
                    })
                }).catch(function() {
                    return []
                })
            }
        }
    },
    396: function(e, t, r) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var n = function() {
                function e(e, t) {
                    for (var r = 0; r < t.length; r++) {
                        var n = t[r];
                        n.enumerable = n.enumerable || !1,
                        n.configurable = !0,
                        "value" in n && (n.writable = !0),
                        Object.defineProperty(e, n.key, n)
                    }
                }
                return function(t, r, n) {
                    return r && e(t.prototype, r), n && e(t, n), t
                }
            }(),
            i = function(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }(r(23)),
            o = r(18);
        var a = function(e) {
            function t(e) {
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, t);
                var r = function(e, t) {
                    if (!e)
                        throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
                    return !t || "object" != typeof t && "function" != typeof t ? e : t
                }(this, (t.__proto__ || Object.getPrototypeOf(t)).call(this, e));
                return r.placeholder = r.el.parentNode.querySelector(".placeholder"), r.setPlaceholderString(), r.registerEvents(), r
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
                key: "registerEvents",
                value: function() {
                    var e = this;
                    this.el.addEventListener("click", function() {
                        e.el.focus(),
                        e.registerFireFoxKeyUpEvent(),
                        e.emit("@onClickKeywordInput", {
                            keyword: e.el.value
                        })
                    }),
                    this.el.addEventListener("blur", function() {
                        e.removeFireFoxKeyUpEvent(),
                        e.setPlaceholderString()
                    }),
                    this.el.addEventListener("keyup", function(t) {
                        return e.onKeyUpInput(t)
                    }),
                    this.el.addEventListener("keydown", function(t) {
                        return e.onKeyDownInput(t)
                    }),
                    this.registerFireFoxKeyUpEvent()
                }
            }, {
                key: "onKeyDownInput",
                value: function(e) {
                    return e.keyCode === o.KEY_CODE.ENTER ? (this.emit("@onSubmitSearch"), e.preventDefault()) : (0, o.isDirectionKeyCode)(e.keyCode) && o.KEY_CODE.LEFT !== e.keyCode && o.KEY_CODE.RIGHT !== e.keyCode ? (this.emit("@onKeyUpMove", {
                        keyCode: e.keyCode
                    }), e.preventDefault()) : void 0
                }
            }, {
                key: "onKeyUpInput",
                value: function(e) {
                    e.keyCode === o.KEY_CODE.ENTER || (0, o.isDirectionKeyCode)(e.keyCode) ? e.preventDefault() : this.onWriteKeyword()
                }
            }, {
                key: "onWriteKeyword",
                value: function() {
                    var e = this;
                    this.alertAndRemoveSpecialString(),
                    window.clearTimeout(this.keyupTimeOutId),
                    this.keyupTimeOutId = setTimeout(function() {
                        return e.emit("@onKeyUpInputKeyword", {
                            keyword: e.el.value
                        })
                    }, 100)
                }
            }, {
                key: "setSearchKeyword",
                value: function(e) {
                    this.el.value = e,
                    this.alertAndRemoveSpecialString(),
                    this.setPlaceholderString()
                }
            }, {
                key: "setPlaceholderString",
                value: function() {
                    if (this.el.value)
                        return this.placeholder.innerHTML = this.el.value, void (this.placeholder.style.color = "#4876ef");
                    this.placeholder.innerHTML = "검색어를 입력해주세요",
                    this.placeholder.removeAttribute("style")
                }
            }, {
                key: "alertAndRemoveSpecialString",
                value: function() {
                    var e = /['"‘“!^@*~:;`\\]/gi;
                    this.el.value.length >= 1 && e.test(this.el.value) && (this.el.value = this.el.value.replace(e, ""), alert("검색어에 ' \" ‘ “ ! ^ @ * ~ : ; ` \\ 와 같은 특수문자는 입력 할 수 없습니다."), this.setPlaceholderString())
                }
            }, {
                key: "registerFireFoxKeyUpEvent",
                value: function() {
                    var e = this;
                    if (-1 === navigator.userAgent.toLowerCase().indexOf("firefox") || this.checkInputChage)
                        return !1;
                    this.checkInputChage = setInterval(function() {
                        if (e.previousKeyword === e.el.value)
                            return !1;
                        e.previousKeyword = e.el.value,
                        e.onWriteKeyword()
                    }, 500)
                }
            }, {
                key: "removeFireFoxKeyUpEvent",
                value: function() {
                    this.checkInputChage && (window.clearInterval(this.checkInputChage), this.checkInputChage = null)
                }
            }]), t
        }();
        t.default = a
    },
    397: function(e, t, r) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        });
        var n = function() {
                function e(e, t) {
                    for (var r = 0; r < t.length; r++) {
                        var n = t[r];
                        n.enumerable = n.enumerable || !1,
                        n.configurable = !0,
                        "value" in n && (n.writable = !0),
                        Object.defineProperty(e, n.key, n)
                    }
                }
                return function(t, r, n) {
                    return r && e(t.prototype, r), n && e(t, n), t
                }
            }(),
            i = r(18);
        var o = function() {
            function e() {
                !function(e, t) {
                    if (!(e instanceof t))
                        throw new TypeError("Cannot call a class as a function")
                }(this, e);
                var t = void 0 !== (0, i.getCookie)("KonanAKC") ? parseInt((0, i.getCookie)("KonanAKC")) : 1;
                this.state = {
                    openLayer: !1,
                    suggestionActive: t,
                    keyword: "",
                    previousKeyword: "",
                    layerType: "history",
                    historyResult: {},
                    autoResult: {}
                }
            }
            return n(e, [{
                key: "activateSuggestion",
                value: function() {
                    this.setState({
                        suggestionActive: !0
                    });
                    var e = new Date;
                    e.setDate(e.getDate() + 3650),
                    (0, i.setCookie)("KonanAKC", 1, e.toUTCString())
                }
            }, {
                key: "deactivateSuggestion",
                value: function() {
                    this.setState({
                        suggestionActive: !1
                    });
                    var e = new Date;
                    e.setDate(e.getDate() + 3650),
                    (0, i.setCookie)("KonanAKC", 0, e.toUTCString())
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
                key: "getKeywordsHistoryList",
                value: function() {
                    var e = this;
                    return this.abortRequestIfHasRequest(), this.state.layerType = "history", this.historyResultPromise ? this.historyResultPromise : this.historyResultPromise = fetch("/zf_user/index/search-word-history").then(function(e) {
                        return e.json()
                    }).then(function(t) {
                        if ("history" !== e.state.layerType)
                            throw "typeError";
                        return e.state.historyResult = {
                            count: null !== t && t.hasOwnProperty("result_count") ? t.result_count : 0,
                            list: null !== t && t.hasOwnProperty("result_list") ? t.result_list : []
                        }
                    }).catch(function() {
                        return e.historyResultPromise = null
                    })
                }
            }, {
                key: "removeKeywordHistory",
                value: function(e) {
                    return this.state.historyResult.list = this.state.historyResult.list.filter(function(t) {
                        return t.keyword !== e
                    }), this.state.historyResult.count--, fetch("/zf_user/index/remove-search-history-keyword?" + (0, i.buildQueryString)({
                        keyword: e
                    }))
                }
            }, {
                key: "getAutoCompleteList",
                value: function() {
                    var e = this;
                    return this.state.layerType = "auto", this.state.previousKeyword === this.state.keyword ? this.autoCompletePromise : (this.abortRequestIfHasRequest(), this.abortController = new AbortController, this.autoCompletePromise = fetch("/zf_user/index/auto-complete-word?" + (0, i.buildQueryString)({
                        keyword: this.state.keyword
                    }), {
                        signal: this.abortController.signal
                    }).then(function(e) {
                        return e.json()
                    }).then(function(t) {
                        if (e.abortController = null, "auto" !== e.state.layerType)
                            throw "typeError";
                        return e.state.previousKeyword = e.state.keyword, {
                            count: null !== t && t.hasOwnProperty("result_count") ? t.result_count : 0,
                            list: null !== t && t.hasOwnProperty("result_list") ? t.result_list : []
                        }
                    }))
                }
            }, {
                key: "abortRequestIfHasRequest",
                value: function() {
                    this.abortController && (this.abortController.abort(), this.abortController = null)
                }
            }, {
                key: "resetState",
                value: function() {
                    this.state = Object.assign(this.state, {
                        openLayer: !1,
                        keyword: "",
                        previousKeyword: "",
                        layerType: "history",
                        historyResult: {},
                        autoResult: {}
                    })
                }
            }]), e
        }();
        t.default = o
    }
}]);


