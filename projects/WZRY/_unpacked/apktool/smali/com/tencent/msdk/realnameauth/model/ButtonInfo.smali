.class public Lcom/tencent/msdk/realnameauth/model/ButtonInfo;
.super Ljava/lang/Object;
.source "ButtonInfo.java"


# static fields
.field public static final ACTION_CLOSE_NOTIFY_FAIL:I = 0x1

.field public static final ACTION_CLOSE_NOTIFY_SUCC:I = 0x2

.field public static final ACTION_CLOSE_WITHOUT_NOTIFY:I


# instance fields
.field public action:I

.field public buttonId:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->name:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->action:I

    .line 13
    iput v1, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->buttonId:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "buttonId"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->name:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->action:I

    .line 13
    iput v1, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->buttonId:I

    .line 18
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->name:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->action:I

    .line 20
    iput p3, p0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->buttonId:I

    .line 21
    return-void
.end method
