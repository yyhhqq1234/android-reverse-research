/*
 {"version_code" : "1.3.0"}
*/


NeteaseMpayJSBridge = new Object();


function NeteaseMpayJSBridgePayment() {

    if (NeteaseMpayJSBridgePayment._init==undefined) {

        NeteaseMpayJSBridgePayment.prototype.onResult = function(result) {

            alert(JSON.stringify({
                "method":"onPayFinished",
                "arg1":result
            }));
        };


        NeteaseMpayJSBridgePayment.prototype.onRedirect = function(result) {

                    alert(JSON.stringify({
                        "method":"onPayRedirect",
                        "arg1":result
                    }));
                };

        NeteaseMpayJSBridgePayment._init = 1;
    }

};

NeteaseMpayJSBridge.Payment = new NeteaseMpayJSBridgePayment();





function NeteaseMpayJSBridgeMobileCenter() {

    if (NeteaseMpayJSBridgeMobileCenter._init==undefined) {

        NeteaseMpayJSBridgeMobileCenter.prototype.onMobileChanged = function(mobile) {

            alert(JSON.stringify({
                "method":"onMobileChanged",
                "arg1":mobile
            }));
        };

        NeteaseMpayJSBridgeMobileCenter.prototype.onUserLogin = function(user) {

            alert(JSON.stringify({
                "method":"onUrsMobileLogin",
                "arg1":user
            }));
        };

        NeteaseMpayJSBridgeMobileCenter._init = 1;
    }

};

NeteaseMpayJSBridge.MobileCenter = new NeteaseMpayJSBridgeMobileCenter();






function NeteaseMpayJSBridgeRelatedAccount() {

    if (NeteaseMpayJSBridgeRelatedAccount._init==undefined) {

        NeteaseMpayJSBridgeRelatedAccount.prototype.onMobileBindRelatedAccount = function(user) {

            alert(JSON.stringify({
                "method":"onMobileBindRelatedAccount",
                "arg1":user
            }));
        };

        NeteaseMpayJSBridgeRelatedAccount.prototype.onVerifyRelatedMoible = function() {

            alert(JSON.stringify({
                "method":"onVerifyRelatedMobile"
            }));
        };

        NeteaseMpayJSBridgeRelatedAccount.prototype.onVerifyRelatedMoible = function(content) {

            alert(JSON.stringify({
                "method":"onVerifyRelatedMobile",
                "arg1":content
            }));
        };

        NeteaseMpayJSBridgeRelatedAccount.prototype.jumpToMobileChangePage = function() {

            alert(JSON.stringify({
                "method":"jumpToMobileChangePage"
            }));
        };

        NeteaseMpayJSBridgeRelatedAccount._init = 1;
    }

};

NeteaseMpayJSBridge.RelatedAccount = new NeteaseMpayJSBridgeRelatedAccount();






function NeteaseMpayJSBridgeCommon() {

    if (NeteaseMpayJSBridgeCommon._init==undefined) {

        NeteaseMpayJSBridgeCommon.prototype.changeNavigationTitle = function(title) {

            alert(JSON.stringify({
                "method":"changeNavigationTitle",
                "arg1":title
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.getConfig = function(callback) {

            callback.success(sdk_config_template);

        };

        NeteaseMpayJSBridgeCommon.prototype.closeWindow = function() {

            alert(JSON.stringify({
                "method":"closeWindow"
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.toast = function(msg) {

            alert(JSON.stringify({
                "method":"toast",
                "arg1":msg
            }));
        };


        NeteaseMpayJSBridgeCommon.prototype.alert = function(msg) {

            alert(JSON.stringify({
                "method":"alert",
                "arg1":msg
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.setBackButton = function(msg) {

            alert(JSON.stringify({
                "method":"setBackButton",
                "arg1":msg
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.setUrlPrefixForNativeBrowser = function(prefix) {

            alert(JSON.stringify({
                "method":"setUrlPrefixForNativeBrowser",
                "arg1":prefix
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.openLinkInNativeBrowser = function(url) {

            alert(JSON.stringify({
                "method":"openLinkInNativeBrowser",
                "arg1":url
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.saveToClipboard = function(content) {

            alert(JSON.stringify({
                "method":"saveToClipboard",
                "arg1":content
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.saveImage = function(address) {

            alert(JSON.stringify({
                "method":"saveImage",
                "arg1":address
            }));
        };


        NeteaseMpayJSBridgeCommon.prototype.onQrcodeLogin = function(code, extras) {

            alert(JSON.stringify({
                "method":"onQrcodeLogin",
                "arg1":code,
                "arg2":extras
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.onUserLogin = function(user) {

            alert(JSON.stringify({
                "method":"onUserLogin",
                "arg1":user
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.onTokenRefresh = function(info) {

            alert(JSON.stringify({
                "method":"onTokenRefresh",
                "arg1":info
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.onVerify = function(user) {

            alert(JSON.stringify({
                "method":"onVerify",
                "arg1":user
            }));
         };

         NeteaseMpayJSBridgeCommon.prototype.onRealnameVerify = function(user) {

             alert(JSON.stringify({
                 "method":"onRealnameVerify"
             }));
         };

         NeteaseMpayJSBridgeCommon.prototype.onUserLogout = function() {

            alert(JSON.stringify({
                "method":"onUserLogout"
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.onError = function(code) {

            alert(JSON.stringify({
                "method":"onError",
                "arg1":code
            }));
        };

        NeteaseMpayJSBridgeCommon.prototype.onReady = function(code) {

            alert(JSON.stringify({
                "method":"onReady"
            }));
        };

        NeteaseMpayJSBridgeCommon._init = 1;
    }
};

NeteaseMpayJSBridge.Common = new NeteaseMpayJSBridgeCommon();







var neteaseMpayJSBridgeReadyEvent = document.createEvent('Events');
neteaseMpayJSBridgeReadyEvent.initEvent("NeteaseMpayJSBridgeReady", true, true);
document.dispatchEvent(neteaseMpayJSBridgeReadyEvent);
