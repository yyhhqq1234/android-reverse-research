.class Lio/netty/util/internal/logging/Slf4JLoggerFactory$1;
.super Ljava/io/OutputStream;
.source "Slf4JLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/logging/Slf4JLoggerFactory;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/internal/logging/Slf4JLoggerFactory;

.field final synthetic val$buf:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lio/netty/util/internal/logging/Slf4JLoggerFactory;Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lio/netty/util/internal/logging/Slf4JLoggerFactory$1;->this$0:Lio/netty/util/internal/logging/Slf4JLoggerFactory;

    iput-object p2, p0, Lio/netty/util/internal/logging/Slf4JLoggerFactory$1;->val$buf:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lio/netty/util/internal/logging/Slf4JLoggerFactory$1;->val$buf:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    return-void
.end method
