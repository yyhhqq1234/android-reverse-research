.class public final Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataOuterClass$TestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 435
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$000()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$1;)V
    .locals 0

    .line 428
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearForceCampaignId()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceCountry()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$500(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceCountrySubdivision()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$800(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceExchangeTestMode()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public getForceCampaignId()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 462
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountry()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 519
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivision()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 576
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceExchangeTestMode()I
    .locals 1

    .line 642
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceExchangeTestMode()I

    move-result v0

    return v0
.end method

.method public hasForceCampaignId()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCampaignId()Z

    move-result v0

    return v0
.end method

.method public hasForceCountry()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCountry()Z

    move-result v0

    return v0
.end method

.method public hasForceCountrySubdivision()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCountrySubdivision()Z

    move-result v0

    return v0
.end method

.method public hasForceExchangeTestMode()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceExchangeTestMode()Z

    move-result v0

    return v0
.end method

.method public setForceCampaignId(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 472
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCampaignIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceCountry(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCountryBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$600(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceCountrySubdivision(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$700(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCountrySubdivisionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$900(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceExchangeTestMode(I)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 659
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 660
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1000(Lgatewayprotocol/v1/TestDataOuterClass$TestData;I)V

    return-object p0
.end method
