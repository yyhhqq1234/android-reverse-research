.class public Lcom/tencent/component/plugin/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;,
        Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;,
        Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bootCompleteReceiver:Ljava/lang/String;

.field public corePlugin:Z
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public dexOptimizeDir:Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public enabled:Z
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public exclusive:Z
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

.field public installPath:Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public launchFragment:Ljava/lang/String;

.field public maxAndroidVersion:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public maxBasePlatformVersion:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation
.end field

.field public minAndroidVersion:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public minBasePlatformVersion:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation
.end field

.field public nativeLibraryDir:Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public pluginClass:Ljava/lang/String;

.field public pluginIcon:I
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public pluginId:Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public pluginName:Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

.field public signatures:[Landroid/content/pm/Signature;

.field public surviveDetector:Ljava/lang/String;

.field public surviveable:Z
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public theme:I
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end field

.field public uri:Landroid/net/Uri;

.field public version:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo$1;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    .line 149
    iput-boolean v1, p0, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    .line 154
    iput-boolean v1, p0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 2
    .param p1, "orig"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    .line 149
    iput-boolean v1, p0, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    .line 154
    iput-boolean v1, p0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    .line 162
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    .line 168
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    .line 169
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    .line 170
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->minAndroidVersion:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->minAndroidVersion:I

    .line 171
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    .line 172
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    .line 174
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->version:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    .line 175
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginName:Ljava/lang/String;

    .line 177
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginIcon:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginIcon:I

    .line 178
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    iput v0, p0, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    .line 179
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    .line 180
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    .line 182
    iget-boolean v0, p1, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    .line 183
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    .line 184
    iget-boolean v0, p1, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    .line 185
    iget-boolean v0, p1, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    .line 186
    iget-boolean v0, p1, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    .line 187
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon(Lcom/tencent/component/plugin/PluginManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1, p0}, Lcom/tencent/component/plugin/PluginManager;->getPluginResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 192
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    iget v2, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginIcon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    :goto_0
    return-object v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PluginInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 227
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 235
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 236
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->minAndroidVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void

    :cond_0
    move v0, v2

    .line 233
    goto :goto_0

    :cond_1
    move v0, v2

    .line 240
    goto :goto_1

    :cond_2
    move v0, v2

    .line 241
    goto :goto_2

    :cond_3
    move v1, v2

    .line 242
    goto :goto_3
.end method
