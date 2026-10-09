.class public Lcom/tencent/tdm/defines/DBEvent;
.super Ljava/lang/Object;


# instance fields
.field public Data:[B

.field public DataLen:I

.field public EventID:I

.field public ID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JII[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/tencent/tdm/defines/DBEvent;->Data:[B

    iput p3, p0, Lcom/tencent/tdm/defines/DBEvent;->EventID:I

    iput p4, p0, Lcom/tencent/tdm/defines/DBEvent;->DataLen:I

    iput-wide p1, p0, Lcom/tencent/tdm/defines/DBEvent;->ID:J

    return-void
.end method
