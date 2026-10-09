.class final Lcom/tencent/a/b/d$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/b/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/a/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/a/b/d$a;

    invoke-direct {v0}, Lcom/tencent/a/b/d$a;-><init>()V

    sput-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    return-void
.end method
