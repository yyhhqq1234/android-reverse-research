.class final Lcom/tencent/a/b/h/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/b/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/a/b/h/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/a/b/h/a/a;

    invoke-direct {v0}, Lcom/tencent/a/b/h/a/a;-><init>()V

    sput-object v0, Lcom/tencent/a/b/h/a/a$a;->a:Lcom/tencent/a/b/h/a/a;

    return-void
.end method
