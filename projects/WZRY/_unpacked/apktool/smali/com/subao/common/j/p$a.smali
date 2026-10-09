.class Lcom/subao/common/j/p$a;
.super Landroid/telephony/PhoneStateListener;
.source "SignalWatcherForCellular.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/telephony/TelephonyManager;

.field private final b:Lcom/subao/common/j/o;


# direct methods
.method constructor <init>(Lcom/subao/common/j/o;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/subao/common/j/p$a;->a:Landroid/telephony/TelephonyManager;

    .line 64
    iput-object p1, p0, Lcom/subao/common/j/p$a;->b:Lcom/subao/common/j/o;

    .line 65
    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 68
    const/16 v0, -0x46

    if-lt p0, v0, :cond_0

    .line 69
    const/4 v0, 0x4

    .line 77
    :goto_0
    return v0

    .line 70
    :cond_0
    const/16 v0, -0x55

    if-lt p0, v0, :cond_1

    .line 71
    const/4 v0, 0x3

    goto :goto_0

    .line 72
    :cond_1
    const/16 v0, -0x5f

    if-lt p0, v0, :cond_2

    .line 73
    const/4 v0, 0x2

    goto :goto_0

    .line 74
    :cond_2
    const/16 v0, -0x64

    if-lt p0, v0, :cond_3

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/telephony/SignalStrength;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 111
    const/4 v1, -0x1

    .line 113
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 117
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static a(Landroid/telephony/TelephonyManager;Landroid/telephony/SignalStrength;)I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 130
    const-string v0, "getLevel"

    invoke-static {p1, v0}, Lcom/subao/common/j/p$a;->a(Landroid/telephony/SignalStrength;Ljava/lang/String;)I

    move-result v0

    .line 131
    if-ltz v0, :cond_1

    .line 132
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 137
    const/16 v1, 0x63

    if-eq v0, v1, :cond_2

    .line 138
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-static {v0}, Lcom/subao/common/j/p$a;->a(I)I

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 143
    const-string v0, "getLteLevel"

    invoke-static {p1, v0}, Lcom/subao/common/j/p$a;->a(Landroid/telephony/SignalStrength;Ljava/lang/String;)I

    move-result v0

    .line 144
    if-ltz v0, :cond_3

    .line 145
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v0

    .line 150
    if-gez v0, :cond_4

    .line 151
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/j/p$a;->a(I)I

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    invoke-static {v1}, Lcom/subao/common/j/p$a;->b(I)I

    move-result v1

    .line 153
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 155
    :cond_4
    invoke-static {v0}, Lcom/subao/common/j/p$a;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method static b(I)I
    .locals 1

    .prologue
    .line 83
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_0

    .line 84
    const/4 v0, 0x4

    .line 92
    :goto_0
    return v0

    .line 85
    :cond_0
    const/16 v0, -0x6e

    if-lt p0, v0, :cond_1

    .line 86
    const/4 v0, 0x3

    goto :goto_0

    .line 87
    :cond_1
    const/16 v0, -0x82

    if-lt p0, v0, :cond_2

    .line 88
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :cond_2
    const/16 v0, -0x96

    if-lt p0, v0, :cond_3

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(I)I
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 97
    const/4 v2, 0x7

    if-lt p0, v2, :cond_1

    .line 98
    const/4 v0, 0x4

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const/4 v2, 0x5

    if-ge p0, v2, :cond_0

    .line 101
    if-lt p0, v0, :cond_2

    .line 102
    const/4 v0, 0x2

    goto :goto_0

    .line 103
    :cond_2
    if-lt p0, v1, :cond_3

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(I)I
    .locals 1

    .prologue
    .line 159
    if-gtz p0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 162
    const/16 v0, 0x64

    goto :goto_0

    .line 164
    :cond_1
    mul-int/lit8 v0, p0, 0x64

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 171
    iget-object v0, p0, Lcom/subao/common/j/p$a;->a:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p1}, Lcom/subao/common/j/p$a;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/subao/common/j/p$a;->b:Lcom/subao/common/j/o;

    invoke-static {v0}, Lcom/subao/common/j/p$a;->d(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/subao/common/j/o;->a(I)V

    .line 173
    return-void
.end method
