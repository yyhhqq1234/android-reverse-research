.class public Lcom/android/support/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_DOUBLE_VALUE:D = 0.0

.field private static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field private static final DEFAULT_INT_VALUE:I = 0x0

.field private static final DEFAULT_LONG_VALUE:J = 0x0L

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final LENGTH:Ljava/lang/String; = "_length"

.field public static context:Landroid/content/Context;

.field public static isExpanded:Z

.field public static loadPref:Z

.field private static prefsInstance:Lcom/android/support/Preferences;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static native Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "IJZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static changeFeatureBool(Ljava/lang/String;IZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    .line 44
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v2

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-long v10, v10

    move v12, v3

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Lcom/android/support/ModBridge;->onBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public static changeFeatureInt(Ljava/lang/String;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 28
    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/support/Preferences;->writeInt(II)V

    .line 29
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v2

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x0

    int-to-long v10, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Lcom/android/support/ModBridge;->onInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static changeFeatureLong(Ljava/lang/String;IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/support/Preferences;->writeLong(Ljava/lang/String;J)V

    .line 34
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v1

    move-object v8, v0

    const/4 v9, 0x0

    move-wide v10, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    move-object v6, v0

    long-to-int v7, v2

    invoke-static {v6, v7}, Lcom/android/support/ModBridge;->onInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/support/Preferences;->writeString(ILjava/lang/String;)V

    .line 39
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v2

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-long v10, v10

    const/4 v12, 0x0

    move-object v13, v3

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    return-void
.end method

.method public static loadPrefBool(Ljava/lang/String;IZ)Z
    .locals 14

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/support/Preferences;->readBoolean(IZ)Z

    move-result v6

    move v4, v6

    .line 67
    move v6, v1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 68
    move v6, v4

    sput-boolean v6, Lcom/android/support/Preferences;->loadPref:Z

    .line 70
    :cond_0
    move v6, v1

    const/4 v7, -0x3

    if-ne v6, v7, :cond_1

    .line 71
    move v6, v4

    sput-boolean v6, Lcom/android/support/Preferences;->isExpanded:Z

    .line 73
    :cond_1
    sget-boolean v6, Lcom/android/support/Preferences;->loadPref:Z

    if-nez v6, :cond_2

    move v6, v1

    const/4 v7, 0x0

    if-ge v6, v7, :cond_3

    .line 74
    :cond_2
    move v6, v4

    move v2, v6

    .line 77
    :cond_3
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v1

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-long v10, v10

    move v12, v2

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 78
    move v6, v2

    move v0, v6

    return v0
.end method

.method public static loadPrefInt(Ljava/lang/String;I)I
    .locals 14

    .prologue
    .line 48
    move-object v1, p0

    move v2, p1

    sget-boolean v6, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v6, :cond_0

    .line 49
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->readInt(I)I

    move-result v6

    move v4, v6

    .line 50
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v2

    move-object v8, v1

    move v9, v4

    const/4 v10, 0x0

    int-to-long v10, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 51
    move v6, v4

    move v1, v6

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public static loadPrefLong(Ljava/lang/String;I)J
    .locals 14

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    sget-boolean v6, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v6, :cond_0

    .line 58
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v3, v6

    .line 59
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v1

    move-object v8, v0

    const/4 v9, 0x0

    move-wide v10, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 60
    move-wide v6, v3

    move-wide v0, v6

    .line 62
    :goto_0
    return-wide v0

    :cond_0
    const/4 v6, 0x0

    int-to-long v6, v6

    move-wide v0, v6

    goto :goto_0
.end method

.method public static loadPrefString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 14

    .prologue
    .line 82
    move-object v1, p0

    move v2, p1

    sget-boolean v6, Lcom/android/support/Preferences;->loadPref:Z

    if-nez v6, :cond_0

    move v6, v2

    const/4 v7, 0x0

    if-gt v6, v7, :cond_1

    .line 83
    :cond_0
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->readString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 84
    sget-object v6, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    move v7, v2

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-long v10, v10

    const/4 v12, 0x0

    move-object v13, v4

    invoke-static/range {v6 .. v13}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 85
    move-object v6, v4

    move-object v1, v6

    .line 87
    :goto_0
    return-object v1

    :cond_1
    const-string v6, ""

    move-object v1, v6

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lcom/android/support/Preferences;
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    sget-object v3, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    if-nez v3, :cond_0

    .line 110
    new-instance v3, Lcom/android/support/Preferences;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 112
    :cond_0
    sget-object v3, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    move-object v0, v3

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;)Lcom/android/support/Preferences;
    .locals 9

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Lcom/android/support/Preferences;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v4, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 136
    :cond_0
    sget-object v4, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    move-object v0, v4

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/support/Preferences;
    .locals 10

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    if-eqz v5, :cond_0

    .line 148
    new-instance v5, Lcom/android/support/Preferences;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v5, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 150
    :cond_0
    sget-object v5, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    move-object v0, v5

    return-object v0
.end method

.method public static with(Landroid/content/Context;Z)Lcom/android/support/Preferences;
    .locals 8

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move v4, v1

    if-eqz v4, :cond_0

    .line 122
    new-instance v4, Lcom/android/support/Preferences;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 124
    :cond_0
    sget-object v4, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    sget-object v2, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public getOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "_length"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 453
    new-instance v8, Ljava/util/LinkedHashSet;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v8

    .line 454
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "_length"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v8

    move v5, v8

    .line 455
    move v8, v5

    const/4 v9, 0x0

    if-lt v8, v9, :cond_0

    .line 456
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-lt v8, v9, :cond_1

    .line 460
    :cond_0
    move-object v8, v4

    move-object v0, v8

    .line 462
    :goto_1
    return-object v0

    .line 457
    :cond_1
    move-object v8, v4

    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/support/Preferences;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 456
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 462
    :cond_2
    move-object v8, v2

    move-object v0, v8

    goto :goto_1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 439
    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    .line 442
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/support/Preferences;->getOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public putOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v10, 0x0

    move v4, v10

    .line 415
    sget-object v10, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "_length"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 417
    move-object v10, v0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "_length"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v10

    move v4, v10

    .line 419
    :cond_0
    move-object v10, v0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "_length"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v2

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/support/Preferences;->writeInt(Ljava/lang/String;I)V

    .line 420
    const/4 v10, 0x0

    move v5, v10

    .line 421
    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    .line 423
    :goto_0
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 425
    :goto_1
    move v10, v5

    move v11, v4

    if-lt v10, v11, :cond_2

    return-void

    .line 421
    :cond_1
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v8, v10

    .line 422
    move-object v10, v0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/android/support/Preferences;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 427
    :cond_2
    move-object v10, v0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/support/Preferences;->remove(Ljava/lang/String;)V

    .line 425
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 402
    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/support/Preferences;->putOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method

.method public readBoolean(I)Z
    .locals 6

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    sget-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public readBoolean(IZ)Z
    .locals 9

    .prologue
    .line 371
    move-object v0, p0

    move v1, p1

    move v2, p2

    :try_start_0
    sget-object v6, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 373
    :goto_0
    return v0

    .line 371
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 373
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 6

    .prologue
    .line 255
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 257
    :goto_0
    return-wide v1

    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 8

    .prologue
    .line 266
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 267
    move-wide v6, v3

    move-wide v1, v6

    .line 268
    :goto_0
    return-wide v1

    :cond_0
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 6

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move v0, v3

    return v0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    move v0, v4

    return v0
.end method

.method public readInt(I)I
    .locals 8

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    :try_start_0
    sget-object v5, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 219
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 219
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 313
    move-object v1, p0

    move-object v2, p1

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v2

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v1, v4

    return-wide v1
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 10

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    sget-object v5, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v6, v1

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v0, v5

    return-wide v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    :try_start_0
    sget-object v5, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 171
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 171
    const-string v5, ""

    move-object v0, v5

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v4, v1

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "_length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "_length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 474
    move v6, v3

    const/4 v7, 0x0

    if-lt v6, v7, :cond_0

    .line 475
    sget-object v6, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "_length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-lt v6, v7, :cond_1

    .line 481
    :cond_0
    sget-object v6, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 477
    :cond_1
    sget-object v6, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public writeBoolean(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeDouble(Ljava/lang/String;D)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 276
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/support/Preferences;->writeLong(Ljava/lang/String;J)V

    return-void
.end method

.method public writeFloat(Ljava/lang/String;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeInt(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeInt(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeLong(Ljava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    sget-object v5, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object v6, v1

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v4, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
