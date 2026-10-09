.class Loicq/wlogin_sdk/quicklogin/e;
.super Ljava/lang/Object;
.source "QuickLoginWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Loicq/wlogin_sdk/quicklogin/d;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/quicklogin/d;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Loicq/wlogin_sdk/quicklogin/e;->b:Loicq/wlogin_sdk/quicklogin/d;

    iput-object p2, p0, Loicq/wlogin_sdk/quicklogin/e;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->a:Z

    .line 187
    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/e;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 188
    return-void
.end method
