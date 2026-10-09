.class public final Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lcom/bytedance/retrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/Converter<",
        "Lcom/bytedance/retrofit2/client/Header;",
        "Lcom/bytedance/retrofit2/client/Header;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;-><init>()V

    sput-object v0, Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/bytedance/retrofit2/client/Header;)Lcom/bytedance/retrofit2/client/Header;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Lcom/bytedance/retrofit2/client/Header;

    invoke-virtual {p0, p1}, Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;->convert(Lcom/bytedance/retrofit2/client/Header;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object p1

    return-object p1
.end method
