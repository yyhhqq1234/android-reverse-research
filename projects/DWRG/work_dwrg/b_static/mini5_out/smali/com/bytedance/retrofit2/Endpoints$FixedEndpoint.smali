.class public Lcom/bytedance/retrofit2/Endpoints$FixedEndpoint;
.super Ljava/lang/Object;
.source "Endpoints.java"

# interfaces
.implements Lcom/bytedance/retrofit2/Endpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/Endpoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedEndpoint"
.end annotation


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bytedance/retrofit2/Endpoints$FixedEndpoint;->apiUrl:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/bytedance/retrofit2/Endpoints$FixedEndpoint;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bytedance/retrofit2/Endpoints$FixedEndpoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/retrofit2/Endpoints$FixedEndpoint;->apiUrl:Ljava/lang/String;

    return-object v0
.end method
