.class public Lcom/tencent/msdk/notice/NoticeMsgFromNet;
.super Ljava/lang/Object;
.source "NoticeMsgFromNet.java"


# instance fields
.field public invalidMsgIdList:Ljava/lang/String;

.field public mUpdateTime:Ljava/lang/String;

.field public noticeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/notice/NoticeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeMsgFromNet;->mUpdateTime:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeMsgFromNet;->invalidMsgIdList:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticeMsgFromNet;->noticeList:Ljava/util/ArrayList;

    return-void
.end method
