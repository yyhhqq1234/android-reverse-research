.class Lcom/tencent/component/debug/FileTracerConfig$3;
.super Ljava/lang/Object;
.source "FileTracerConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/debug/FileTracerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/debug/FileTracerConfig;


# direct methods
.method constructor <init>(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracerConfig$3;->this$0:Lcom/tencent/component/debug/FileTracerConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/tencent/component/debug/FileTracerConfig;->access$000(Ljava/io/File;)I

    move-result v0

    invoke-static {p2}, Lcom/tencent/component/debug/FileTracerConfig;->access$000(Ljava/io/File;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 155
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/debug/FileTracerConfig$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
