.class Loicq/wlogin_sdk/quicklogin/b;
.super Ljava/lang/Object;
.source "QuickLoginWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Loicq/wlogin_sdk/quicklogin/b;->a:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/b;->a:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;

    invoke-virtual {v0}, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;->finish()V

    .line 116
    return-void
.end method
