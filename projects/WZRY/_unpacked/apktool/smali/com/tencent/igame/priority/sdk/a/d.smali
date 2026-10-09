.class public Lcom/tencent/igame/priority/sdk/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/igame/priority/sdk/a/d;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/igame/priority/sdk/a/d;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/a/d;->a:Ljava/lang/String;

    return-void
.end method
