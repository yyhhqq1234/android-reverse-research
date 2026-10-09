.class public final Lcom/onesignal/core/internal/language/impl/LanguageContext;
.super Ljava/lang/Object;
.source "LanguageContext.kt"

# interfaces
.implements Lcom/onesignal/core/internal/language/ILanguageContext;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onesignal/core/internal/language/impl/LanguageContext;",
        "Lcom/onesignal/core/internal/language/ILanguageContext;",
        "_propertiesModelStore",
        "Lcom/onesignal/user/internal/properties/PropertiesModelStore;",
        "(Lcom/onesignal/user/internal/properties/PropertiesModelStore;)V",
        "deviceLanguageProvider",
        "Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;",
        "value",
        "",
        "language",
        "getLanguage",
        "()Ljava/lang/String;",
        "setLanguage",
        "(Ljava/lang/String;)V",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

.field private deviceLanguageProvider:Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;


# direct methods
.method public constructor <init>(Lcom/onesignal/user/internal/properties/PropertiesModelStore;)V
    .locals 1

    const-string v0, "_propertiesModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/onesignal/core/internal/language/impl/LanguageContext;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    .line 9
    new-instance p1, Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;

    invoke-direct {p1}, Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;-><init>()V

    iput-object p1, p0, Lcom/onesignal/core/internal/language/impl/LanguageContext;->deviceLanguageProvider:Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/onesignal/core/internal/language/impl/LanguageContext;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/properties/PropertiesModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/properties/PropertiesModel;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/properties/PropertiesModel;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/core/internal/language/impl/LanguageContext;->deviceLanguageProvider:Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/language/impl/LanguageProviderDevice;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/onesignal/core/internal/language/impl/LanguageContext;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/properties/PropertiesModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/user/internal/properties/PropertiesModel;

    invoke-virtual {v0, p1}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLanguage(Ljava/lang/String;)V

    return-void
.end method
