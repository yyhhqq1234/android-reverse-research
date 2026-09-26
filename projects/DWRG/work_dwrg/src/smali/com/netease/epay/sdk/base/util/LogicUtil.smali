.class public Lcom/netease/epay/sdk/base/util/LogicUtil;
.super Ljava/lang/Object;
.source "LogicUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllFragments(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 105
    return-void
.end method

.method public static dismissLoading(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const-class v0, Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    .line 130
    const/4 v1, 0x0

    .line 131
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 132
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 137
    :goto_2
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 131
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static finishPay()V
    .locals 2

    .prologue
    .line 45
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 46
    const-string v0, "========================================================"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 47
    const-string v0, "||                       Epay                         ||"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 48
    const-string v0, "||can\'t execute finishPay() before sdk function finish||"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 49
    const-string v0, "========================================================"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v0, "==========================================="

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 53
    const-string v0, "||              Epay                     ||"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 54
    const-string v0, "||            finishPay()                ||"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 55
    const-string v0, "==========================================="

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->v(Ljava/lang/String;)V

    .line 58
    const/16 v0, -0x64

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastActionTime:J

    .line 60
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->resetData()V

    goto :goto_0
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 237
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 230
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x3

    const/4 v2, 0x7

    :try_start_0
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 233
    const/4 v0, 0x3

    const-string v2, "****"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFactor()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 206
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 209
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 211
    :try_start_0
    const-string v4, "index"

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->wordStart:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string v4, "range"

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->wordEnd:I

    sget v6, Lcom/netease/epay/sdk/base/core/BaseData;->wordStart:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v4, "index"

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->mStart:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v4, "range"

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->mEnd:I

    sget v6, Lcom/netease/epay/sdk/base/core/BaseData;->mStart:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v4, "index"

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->nStart:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    const-string v4, "range"

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->nEnd:I

    sget v6, Lcom/netease/epay/sdk/base/core/BaseData;->nStart:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    const-string v4, "word"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "m"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v0, "n"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bankId"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "balance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    sget v0, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_balance:I

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epaysdk_icon_bank"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 245
    if-nez v0, :cond_0

    .line 246
    sget v0, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_bankdefault:I

    goto :goto_0
.end method

.method public static getSupportBanks(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "nowBankInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportBanks;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "banks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SupportBanks;>;"
    const/4 v0, 0x5

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    if-eqz p0, :cond_3

    .line 279
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    const-string v1, ""

    .line 281
    const-string v0, ""

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 285
    array-length v3, v2

    if-le v3, v6, :cond_4

    .line 286
    aget-object v1, v2, v10

    .line 287
    aget-object v0, v2, v6

    move-object v2, v0

    move-object v3, v1

    .line 291
    :goto_0
    const-string v0, "debit"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "debit"

    const-string v7, "debit"

    invoke-static {v7}, Lcom/netease/epay/sdk/base/model/Card;->getCardDesFromCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    .line 294
    iget-object v1, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget-object v1, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    iget-object v9, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-static {v9}, Lcom/netease/epay/sdk/base/model/Card;->getCardDesFromCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    iget-object v1, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 301
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .line 302
    iget-object v7, v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v7, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->selectIndex:I

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 310
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    :cond_3
    return-object v4

    :cond_4
    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_0
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .locals 3
    .param p0, "actv"    # Landroid/app/Activity;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 68
    :cond_0
    return-void
.end method

.method public static isShowOpenFinger(ZLandroid/content/Context;)I
    .locals 3
    .param p0, "flag"    # Z
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/netease/epay/sdk/base/util/fingerprint/Root;

    invoke-direct {v1}, Lcom/netease/epay/sdk/base/util/fingerprint/Root;-><init>()V

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/fingerprint/Root;->isDeviceRooted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    if-eqz p0, :cond_0

    .line 259
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->checkFingerprintAvailable(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 318
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 319
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 322
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_0
    return-object v2
.end method

.method public static jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static reshowAllFragment(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 4
    .param p0, "actv"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 189
    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 191
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 197
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 201
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z
    .locals 2
    .param p0, "frag"    # Lcom/netease/epay/sdk/base/ui/SdkFragment;
    .param p1, "actv"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    const/4 v1, 0x0

    .line 109
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0, p1, v1, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithConfig(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ZZ)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static showFragmentKeepAll(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p0, "frag"    # Lcom/netease/epay/sdk/base/ui/SdkFragment;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "actv"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithConfig(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ZZ)Z

    .line 115
    return-void
.end method

.method public static showFragmentWithConfig(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ZZ)Z
    .locals 4
    .param p0, "frag"    # Lcom/netease/epay/sdk/base/ui/SdkFragment;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "actv"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "isHideOthers"    # Z
    .param p4, "isKeepOthers"    # Z

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 153
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 157
    if-nez v2, :cond_2

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    if-nez p4, :cond_6

    .line 161
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    .line 162
    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 168
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 162
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkFragment;

    if-eqz v0, :cond_3

    .line 174
    if-eqz p3, :cond_5

    .line 175
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 177
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 181
    :cond_6
    if-eqz p0, :cond_7

    .line 182
    invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 184
    :cond_7
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showFragmentWithHide(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 2
    .param p0, "fragment"    # Lcom/netease/epay/sdk/base/ui/SdkFragment;
    .param p1, "actv"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "isHideOthers"    # Z

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithConfig(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ZZ)Z

    .line 147
    return-void
.end method

.method public static showLoading(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/LoadingFragment;->getInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentKeepAll(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 119
    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/base/util/LogicUtil$1;

    invoke-direct {v2, v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 87
    :cond_2
    sget v1, Lcom/netease/epay/sdk/base/R$id;->epaysdk_soft_tag:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/base/util/LogicUtil$2;

    invoke-direct {v2, p0, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil$2;-><init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
