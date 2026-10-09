.class public final Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;
.super Ljava/lang/Object;
.source "InAppMessageClickResult.kt"

# interfaces
.implements Lcom/onesignal/inAppMessages/IInAppMessageClickResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 02\u00020\u0001:\u00010B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0018\u0010.\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0006\u0010/\u001a\u00020\u0003R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\"\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\nR\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\nR\u001c\u0010&\u001a\u0004\u0018\u00010\'X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u00061"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;",
        "Lcom/onesignal/inAppMessages/IInAppMessageClickResult;",
        "json",
        "Lorg/json/JSONObject;",
        "promptFactory",
        "Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;",
        "(Lorg/json/JSONObject;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;)V",
        "actionId",
        "",
        "getActionId",
        "()Ljava/lang/String;",
        "clickId",
        "getClickId",
        "closingMessage",
        "",
        "getClosingMessage",
        "()Z",
        "isFirstClick",
        "setFirstClick",
        "(Z)V",
        "outcomes",
        "",
        "Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;",
        "getOutcomes",
        "()Ljava/util/List;",
        "pageId",
        "getPageId",
        "prompts",
        "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;",
        "getPrompts",
        "tags",
        "Lcom/onesignal/inAppMessages/internal/InAppMessageTag;",
        "getTags",
        "()Lcom/onesignal/inAppMessages/internal/InAppMessageTag;",
        "setTags",
        "(Lcom/onesignal/inAppMessages/internal/InAppMessageTag;)V",
        "url",
        "getUrl",
        "urlTarget",
        "Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;",
        "getUrlTarget",
        "()Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;",
        "setUrlTarget",
        "(Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;)V",
        "parseOutcomes",
        "",
        "parsePrompts",
        "toJSONObject",
        "Companion",
        "com.onesignal.inAppMessages"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLICK_NAME:Ljava/lang/String; = "click_name"

.field private static final CLICK_URL:Ljava/lang/String; = "click_url"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CLOSES_MESSAGE:Ljava/lang/String; = "closes_message"

.field public static final Companion:Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult$Companion;

.field private static final FIRST_CLICK:Ljava/lang/String; = "first_click"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final OUTCOMES:Ljava/lang/String; = "outcomes"

.field private static final PAGE_ID:Ljava/lang/String; = "pageId"

.field private static final PROMPTS:Ljava/lang/String; = "prompts"

.field private static final TAGS:Ljava/lang/String; = "tags"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final URL_TARGET:Ljava/lang/String; = "url_target"


# instance fields
.field private final actionId:Ljava/lang/String;

.field private final clickId:Ljava/lang/String;

.field private final closingMessage:Z

.field private isFirstClick:Z

.field private final outcomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;",
            ">;"
        }
    .end annotation
.end field

.field private final pageId:Ljava/lang/String;

.field private final prompts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Lcom/onesignal/inAppMessages/internal/InAppMessageTag;

.field private final url:Ljava/lang/String;

.field private urlTarget:Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->Companion:Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;)V
    .locals 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promptFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->outcomes:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->prompts:Ljava/util/List;

    const-string v0, "id"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->clickId:Ljava/lang/String;

    const-string v0, "name"

    .line 66
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->actionId:Ljava/lang/String;

    const-string v0, "url"

    .line 67
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->url:Ljava/lang/String;

    const-string v0, "pageId"

    .line 68
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->pageId:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;->Companion:Lcom/onesignal/inAppMessages/InAppMessageActionUrlType$Companion;

    const-string v2, "url_target"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/inAppMessages/InAppMessageActionUrlType$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->setUrlTarget(Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;)V

    .line 71
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->getUrlTarget()Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    invoke-virtual {p0, v0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->setUrlTarget(Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;)V

    :cond_0
    const-string v0, "close"

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->closingMessage:Z

    const-string v0, "outcomes"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->parseOutcomes(Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "tags"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/onesignal/inAppMessages/internal/InAppMessageTag;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "json.getJSONObject(TAGS)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/onesignal/inAppMessages/internal/InAppMessageTag;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->tags:Lcom/onesignal/inAppMessages/internal/InAppMessageTag;

    :cond_2
    const-string v0, "prompts"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->parsePrompts(Lorg/json/JSONObject;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;)V

    :cond_3
    return-void
.end method

.method private final parseOutcomes(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "outcomes"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->outcomes:Ljava/util/List;

    new-instance v3, Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final parsePrompts(Lorg/json/JSONObject;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "prompts"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 96
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "promptType"

    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;->createPrompt(Ljava/lang/String;)Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v3, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->prompts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->clickId:Ljava/lang/String;

    return-object v0
.end method

.method public getClosingMessage()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->closingMessage:Z

    return v0
.end method

.method public final getOutcomes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->outcomes:Ljava/util/List;

    return-object v0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrompts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->prompts:Ljava/util/List;

    return-object v0
.end method

.method public final getTags()Lcom/onesignal/inAppMessages/internal/InAppMessageTag;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->tags:Lcom/onesignal/inAppMessages/internal/InAppMessageTag;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTarget()Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->urlTarget:Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    return-object v0
.end method

.method public final isFirstClick()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->isFirstClick:Z

    return v0
.end method

.method public final setFirstClick(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->isFirstClick:Z

    return-void
.end method

.method public final setTags(Lcom/onesignal/inAppMessages/internal/InAppMessageTag;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->tags:Lcom/onesignal/inAppMessages/internal/InAppMessageTag;

    return-void
.end method

.method public setUrlTarget(Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->urlTarget:Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "click_name"

    .line 107
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->getActionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "click_url"

    .line 108
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "first_click"

    .line 109
    iget-boolean v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->isFirstClick:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "closes_message"

    .line 110
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->getClosingMessage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 112
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->outcomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;

    invoke-virtual {v3}, Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "outcomes"

    .line 113
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->tags:Lcom/onesignal/inAppMessages/internal/InAppMessageTag;

    if-eqz v1, :cond_1

    const-string v2, "tags"

    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onesignal/inAppMessages/internal/InAppMessageTag;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->getUrlTarget()Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "url_target"

    .line 118
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->getUrlTarget()Lcom/onesignal/inAppMessages/InAppMessageActionUrlType;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method
