.class public Loicq/wlogin_sdk/request/h;
.super Ljava/lang/Thread;
.source "delete_expire_log.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object p1, p0, Loicq/wlogin_sdk/request/h;->a:Landroid/content/Context;

    .line 13
    const-string v0, "WtCleanThread"

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/h;->setName(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Loicq/wlogin_sdk/request/h;->a:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->deleteExpireLog(Landroid/content/Context;)V

    .line 20
    return-void
.end method
