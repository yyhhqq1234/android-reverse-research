.class public Lcom/subao/common/b/j;
.super Ljava/lang/Object;
.source "OriginUserStateRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/j$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/subao/common/j/j;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 51
    if-nez p6, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/subao/common/j/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const/16 v3, 0x3ed

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p6

    move-object v1, p3

    move-object v2, p7

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/QueryOriginUserStateCallback;->onOriginUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Lcom/subao/common/b/j$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/b/j$a;-><init>(Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V

    .line 58
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
