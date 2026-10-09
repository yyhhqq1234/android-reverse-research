.class public Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
.super Ljava/lang/Object;
.source "WebveiwFrameRet.java"


# instance fields
.field public buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/realnameauth/model/ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public openurl:Ljava/lang/String;

.field public showTitle:Z

.field public showTitleBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitleBar:Z

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitle:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    return-void
.end method
