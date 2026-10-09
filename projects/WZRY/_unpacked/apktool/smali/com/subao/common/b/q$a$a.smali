.class Lcom/subao/common/b/q$a$a;
.super Ljava/lang/Object;
.source "XunyouUserStateRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/subao/common/intf/UserInfo;

.field final c:Lcom/subao/common/intf/XunyouUserStateCallback;

.field final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILcom/subao/common/intf/UserInfo;Lcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/subao/common/b/q$a$a;->a:I

    .line 141
    iput-object p2, p0, Lcom/subao/common/b/q$a$a;->b:Lcom/subao/common/intf/UserInfo;

    .line 142
    iput-object p3, p0, Lcom/subao/common/b/q$a$a;->c:Lcom/subao/common/intf/XunyouUserStateCallback;

    .line 143
    iput-object p4, p0, Lcom/subao/common/b/q$a$a;->d:Ljava/lang/Object;

    .line 144
    return-void
.end method
