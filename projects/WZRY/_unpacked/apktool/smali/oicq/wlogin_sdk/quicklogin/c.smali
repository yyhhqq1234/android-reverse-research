.class Loicq/wlogin_sdk/quicklogin/c;
.super Landroid/webkit/WebChromeClient;
.source "QuickLoginWebViewActivity.java"


# instance fields
.field final synthetic a:Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;

.field final synthetic b:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Loicq/wlogin_sdk/quicklogin/c;->b:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;

    iput-object p2, p0, Loicq/wlogin_sdk/quicklogin/c;->a:Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3

    .prologue
    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "uin"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "sig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v2, p0, Loicq/wlogin_sdk/quicklogin/c;->a:Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;

    invoke-virtual {v2, v1, v0}, Loicq/wlogin_sdk/quicklogin/QuikLoginJSInterface;->ptloginCallBack(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJsPrompt failed message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
