.class public final Lcom/netease/mobile/link/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.netease.ntunisdk.base.SdkBase"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 2
    :goto_1
    sput-boolean v0, Lcom/netease/mobile/link/c5;->a:Z

    return-void
.end method
