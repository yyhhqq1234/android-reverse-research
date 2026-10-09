.class public Lcom/subao/common/b/q;
.super Ljava/lang/Object;
.source "XunyouUserStateRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/b/q$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/subao/common/b/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subao/common/b/q$a;-><init>(Lcom/subao/common/b/q$1;)V

    iput-object v0, p0, Lcom/subao/common/b/q;->a:Lcom/subao/common/b/q$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/intf/UserInfo;Lcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UserInfo can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/subao/common/b/q;->a:Lcom/subao/common/b/q$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/subao/common/b/q$a;->a(Lcom/subao/common/intf/UserInfo;Lcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(IIILjava/lang/String;)V
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subao/common/b/q;->a:Lcom/subao/common/b/q$a;

    invoke-virtual {v0, p1}, Lcom/subao/common/b/q$a;->a(I)Lcom/subao/common/b/q$a$a;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    iget-object v0, v2, Lcom/subao/common/b/q$a$a;->c:Lcom/subao/common/intf/XunyouUserStateCallback;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, v2, Lcom/subao/common/b/q$a$a;->b:Lcom/subao/common/intf/UserInfo;

    iget-object v2, v2, Lcom/subao/common/b/q$a$a;->d:Ljava/lang/Object;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/XunyouUserStateCallback;->onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
