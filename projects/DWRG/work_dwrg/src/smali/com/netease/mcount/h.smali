.class public Lcom/netease/mcount/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:J

.field public static c:Z

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://analytics.mpay.netease.com"

    sput-object v0, Lcom/netease/mcount/h;->a:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/netease/mcount/h;->b:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/mcount/h;->c:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/mcount/h;->d:J

    return-void
.end method
