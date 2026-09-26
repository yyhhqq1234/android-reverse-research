.class public interface abstract Lio/netty/buffer/ByteBufProcessor;
.super Ljava/lang/Object;
.source "ByteBufProcessor.java"


# static fields
.field public static final FIND_CR:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_CRLF:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_LF:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_LINEAR_WHITESPACE:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_NON_CR:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_NON_CRLF:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_NON_LF:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_NON_LINEAR_WHITESPACE:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_NON_NUL:Lio/netty/buffer/ByteBufProcessor;

.field public static final FIND_NUL:Lio/netty/buffer/ByteBufProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$1;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$1;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_NUL:Lio/netty/buffer/ByteBufProcessor;

    .line 34
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$2;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$2;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_NON_NUL:Lio/netty/buffer/ByteBufProcessor;

    .line 44
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$3;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$3;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_CR:Lio/netty/buffer/ByteBufProcessor;

    .line 54
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$4;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$4;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_NON_CR:Lio/netty/buffer/ByteBufProcessor;

    .line 64
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$5;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$5;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_LF:Lio/netty/buffer/ByteBufProcessor;

    .line 74
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$6;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$6;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_NON_LF:Lio/netty/buffer/ByteBufProcessor;

    .line 84
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$7;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$7;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_CRLF:Lio/netty/buffer/ByteBufProcessor;

    .line 94
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$8;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$8;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_NON_CRLF:Lio/netty/buffer/ByteBufProcessor;

    .line 104
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$9;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$9;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_LINEAR_WHITESPACE:Lio/netty/buffer/ByteBufProcessor;

    .line 114
    new-instance v0, Lio/netty/buffer/ByteBufProcessor$10;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufProcessor$10;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufProcessor;->FIND_NON_LINEAR_WHITESPACE:Lio/netty/buffer/ByteBufProcessor;

    .line 119
    return-void
.end method


# virtual methods
.method public abstract process(B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
