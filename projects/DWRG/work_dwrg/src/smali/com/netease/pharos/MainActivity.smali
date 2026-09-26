.class public Lcom/netease/pharos/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private all_test_btn:Landroid/widget/Button;

.field private check_btn:Landroid/widget/Button;

.field private check_region_btn:Landroid/widget/Button;

.field private devices_info_btn:Landroid/widget/Button;

.field private devices_info_result_btn:Landroid/widget/Button;

.field private get_cellid_btn:Landroid/widget/Button;

.field private get_lighten_btn:Landroid/widget/Button;

.field private get_localid_btn:Landroid/widget/Button;

.field private httpdns_btn:Landroid/widget/Button;

.field private infoBuf:Ljava/lang/StringBuffer;

.field private infoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private info_tv:Landroid/widget/TextView;

.field private ip:Ljava/lang/String;

.field private kcp_btn:Landroid/widget/Button;

.field private linl_check_all_btn:Landroid/widget/Button;

.field private linl_check_all_result_btn:Landroid/widget/Button;

.field private location_info_btn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDecision:I

.field private mIp:Ljava/lang/String;

.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;

.field private mOption:I

.field private mPort:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private packetLossInfo:Ljava/lang/String;

.field private pingInfo:Ljava/lang/String;

.field private qos_btn:Landroid/widget/Button;

.field private recheck_region_btn:Landroid/widget/Button;

.field private recheck_region_result_btn:Landroid/widget/Button;

.field private region_chech_user_need:Landroid/widget/Button;

.field private region_check_info_tv:Landroid/widget/TextView;

.field private region_config_btn:Landroid/widget/Button;

.field private report_btn:Landroid/widget/Button;

.field private set_param_btn:Landroid/widget/Button;

.field private size:Ljava/lang/String;

.field private tcp_btn:Landroid/widget/Button;

.field private udp_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "g37na"

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->mProject:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/pharos/MainActivity;->mOption:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/MainActivity;->mDecision:I

    .line 60
    const-string v0, "10.160.179.124"

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    .line 61
    const-string v0, "9999"

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->mUrl:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->tcp_btn:Landroid/widget/Button;

    .line 69
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->udp_btn:Landroid/widget/Button;

    .line 71
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->kcp_btn:Landroid/widget/Button;

    .line 72
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->devices_info_btn:Landroid/widget/Button;

    .line 73
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->devices_info_result_btn:Landroid/widget/Button;

    .line 74
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->location_info_btn:Landroid/widget/Button;

    .line 75
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->check_region_btn:Landroid/widget/Button;

    .line 76
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->recheck_region_btn:Landroid/widget/Button;

    .line 77
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->recheck_region_result_btn:Landroid/widget/Button;

    .line 78
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->report_btn:Landroid/widget/Button;

    .line 79
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->region_chech_user_need:Landroid/widget/Button;

    .line 80
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->region_config_btn:Landroid/widget/Button;

    .line 81
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->check_btn:Landroid/widget/Button;

    .line 82
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->linl_check_all_btn:Landroid/widget/Button;

    .line 83
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->linl_check_all_result_btn:Landroid/widget/Button;

    .line 84
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->all_test_btn:Landroid/widget/Button;

    .line 85
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->set_param_btn:Landroid/widget/Button;

    .line 88
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->get_cellid_btn:Landroid/widget/Button;

    .line 89
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->get_localid_btn:Landroid/widget/Button;

    .line 90
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->get_lighten_btn:Landroid/widget/Button;

    .line 91
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->httpdns_btn:Landroid/widget/Button;

    .line 92
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->qos_btn:Landroid/widget/Button;

    .line 99
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->info_tv:Landroid/widget/TextView;

    .line 100
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->region_check_info_tv:Landroid/widget/TextView;

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->infoBuf:Ljava/lang/StringBuffer;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->infoMap:Ljava/util/Map;

    .line 106
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->ip:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->size:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->packetLossInfo:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/netease/pharos/MainActivity;->pingInfo:Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/netease/pharos/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/MainActivity$1;-><init>(Lcom/netease/pharos/MainActivity;)V

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/MainActivity;)Lcom/netease/pharos/link/LinkCheckListener;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/netease/pharos/MainActivity;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/netease/pharos/MainActivity;->mOption:I

    return v0
.end method

.method static synthetic access$11(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/netease/pharos/MainActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/netease/pharos/MainActivity;->mDecision:I

    return v0
.end method

.method static synthetic access$15(Lcom/netease/pharos/MainActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->region_chech_user_need:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netease/pharos/MainActivity;->mProject:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/netease/pharos/MainActivity;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/netease/pharos/MainActivity;->mOption:I

    return-void
.end method

.method static synthetic access$4(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netease/pharos/MainActivity;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/netease/pharos/MainActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/netease/pharos/MainActivity;->mDecision:I

    return-void
.end method

.method static synthetic access$8(Lcom/netease/pharos/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->info_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 138
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->tcp_btn:Landroid/widget/Button;

    .line 139
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->udp_btn:Landroid/widget/Button;

    .line 140
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->kcp_btn:Landroid/widget/Button;

    .line 141
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->devices_info_btn:Landroid/widget/Button;

    .line 142
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->devices_info_result_btn:Landroid/widget/Button;

    .line 143
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->location_info_btn:Landroid/widget/Button;

    .line 144
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->check_region_btn:Landroid/widget/Button;

    .line 145
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->recheck_region_btn:Landroid/widget/Button;

    .line 146
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->recheck_region_result_btn:Landroid/widget/Button;

    .line 147
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->report_btn:Landroid/widget/Button;

    .line 148
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->region_chech_user_need:Landroid/widget/Button;

    .line 149
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->region_config_btn:Landroid/widget/Button;

    .line 150
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->check_btn:Landroid/widget/Button;

    .line 151
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->linl_check_all_btn:Landroid/widget/Button;

    .line 152
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->linl_check_all_result_btn:Landroid/widget/Button;

    .line 153
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->all_test_btn:Landroid/widget/Button;

    .line 154
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->set_param_btn:Landroid/widget/Button;

    .line 156
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->get_cellid_btn:Landroid/widget/Button;

    .line 157
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->get_localid_btn:Landroid/widget/Button;

    .line 158
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->get_lighten_btn:Landroid/widget/Button;

    .line 159
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->httpdns_btn:Landroid/widget/Button;

    .line 160
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->qos_btn:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->region_chech_user_need:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->info_tv:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->info_tv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/pharos/MainActivity;->region_check_info_tv:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->region_check_info_tv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->info_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mProject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/pharos/MainActivity;->mProject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/MainActivity;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDecision="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/MainActivity;->mDecision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    const-string v3, "g37na"

    invoke-virtual {v1, v2, v3}, Lcom/netease/pharos/PharosProxy;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/pharos/PharosProxy;->setmOption(I)V

    .line 126
    new-instance v0, Lcom/netease/pharos/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/MainActivity$2;-><init>(Lcom/netease/pharos/MainActivity;)V

    .line 134
    .local v0, "listener11":Lcom/netease/pharos/PharosListener;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosProxy;->setmPharosListener(Lcom/netease/pharos/PharosListener;)V

    .line 135
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->tcp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->udp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->kcp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->devices_info_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->devices_info_result_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->location_info_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->check_region_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->recheck_region_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->recheck_region_result_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->region_config_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->report_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->region_chech_user_need:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->check_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->linl_check_all_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->linl_check_all_result_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->all_test_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->set_param_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->get_cellid_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->get_localid_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->get_lighten_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->httpdns_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/netease/pharos/MainActivity;->qos_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 616
    :goto_0
    return-void

    .line 233
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->infoBuf:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 234
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$3;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 248
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->infoBuf:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 249
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$4;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 263
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->infoBuf:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 264
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$5;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 278
    :pswitch_3
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$6;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 285
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 289
    :pswitch_4
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u8bbe\u5907\u63a2\u6d4b\u7ed3\u679c="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :pswitch_5
    const-string v18, "MainActivity"

    const-string v19, "\u533a\u57df\u51b3\u7b56"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$7;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 308
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 312
    :pswitch_6
    const-string v18, "MainActivity"

    const-string v19, "\u521d\u6b65\u5224\u65ad\u65f6\u533a"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v9, Lcom/netease/pharos/location/LocationHunter;

    invoke-direct {v9}, Lcom/netease/pharos/location/LocationHunter;-><init>()V

    .line 314
    .local v9, "locationHunter":Lcom/netease/pharos/location/LocationHunter;
    invoke-virtual {v9}, Lcom/netease/pharos/location/LocationHunter;->start()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v15

    .line 317
    .local v15, "result":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    goto/16 :goto_0

    .line 319
    .end local v9    # "locationHunter":Lcom/netease/pharos/location/LocationHunter;
    .end local v15    # "result":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    :pswitch_7
    const-string v18, "MainActivity"

    const-string v19, "\u68c0\u9a8c\u5730\u533a"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v10, Lcom/netease/pharos/location/LocationHunter;

    invoke-direct {v10}, Lcom/netease/pharos/location/LocationHunter;-><init>()V

    .line 321
    .local v10, "locationHunter1":Lcom/netease/pharos/location/LocationHunter;
    invoke-virtual {v10}, Lcom/netease/pharos/location/LocationHunter;->start()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v16

    .line 322
    .local v16, "result1":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "111 result1="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/netease/pharos/location/LocationHunter;->checkRegion(Lcom/netease/pharos/deviceinfo/DeviceInfo;)Lcom/netease/pharos/deviceinfo/DeviceInfo;

    goto/16 :goto_0

    .line 330
    .end local v10    # "locationHunter1":Lcom/netease/pharos/location/LocationHunter;
    .end local v16    # "result1":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    :pswitch_8
    const-string v18, "MainActivity"

    const-string v19, "\u68c0\u9a8c\u65f6\u533a\u6700\u4f18\u7ed3\u679c"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/netease/pharos/location/RecheckResult;->getInstance()Lcom/netease/pharos/location/RecheckResult;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/location/RecheckResult;->chooseBest()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    .line 336
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u68c0\u9a8c\u65f6\u533a\u6700\u597d\u7ed3\u679c="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :pswitch_9
    const-string v18, "MainActivity"

    const-string v19, "\u4e0a\u4f20\u65e5\u5fd7"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getTestDeviceInfo(Z)Lorg/json/JSONObject;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "info":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_a
    const-string v18, "MainActivity"

    const-string v19, "\u533a\u57df\u51b3\u7b56\u63a5\u5165\u65b9\u83b7\u53d6\u7ed3\u679c"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u8dd1\u4e00\u904d\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u7ed3\u679c="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v4, "info1":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v14

    .line 351
    .local v14, "region_check_info":Lorg/json/JSONObject;
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "infos":[Ljava/lang/String;
    const-string v18, "\u663e\u793a\u51b3\u7b56\u6570\u636e="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    array-length v0, v5

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->region_check_info_tv:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 355
    :cond_0
    aget-object v17, v5, v18

    .line 356
    .local v17, "string":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 365
    .end local v4    # "info1":Ljava/lang/StringBuffer;
    .end local v5    # "infos":[Ljava/lang/String;
    .end local v14    # "region_check_info":Lorg/json/JSONObject;
    .end local v17    # "string":Ljava/lang/String;
    :pswitch_b
    const-string v18, "MainActivity"

    const-string v19, "\u4e0b\u8f7d\u63a2\u6d4b\u914d\u7f6e"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v6, Lcom/netease/pharos/MainActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/netease/pharos/MainActivity$8;-><init>(Lcom/netease/pharos/MainActivity;)V

    .line 401
    .local v6, "listener":Lcom/netease/pharos/PharosListener;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/netease/pharos/PharosProxy;->setmPharosListener(Lcom/netease/pharos/PharosListener;)V

    .line 402
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/PharosProxy;->start()V

    goto/16 :goto_0

    .line 406
    .end local v6    # "listener":Lcom/netease/pharos/PharosListener;
    :pswitch_c
    const-string v18, "MainActivity"

    const-string v19, "\u5404\u6a21\u5757\u63a2\u6d4b"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/netease/pharos/linkcheck/ScanProxy;->getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/linkcheck/ScanProxy;->start()I

    .line 409
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getLinkCheckResultInfo()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "ScanResult":Ljava/lang/String;
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u5404\u6a21\u5757\u63a2\u6d4b----\u7ed3\u679c="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    .end local v2    # "ScanResult":Ljava/lang/String;
    :pswitch_d
    const-string v18, "MainActivity"

    const-string v19, "\u94fe\u8def\u63a2\u6d4b\u5168\u6d41\u7a0b"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v7, Lcom/netease/pharos/MainActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/netease/pharos/MainActivity$9;-><init>(Lcom/netease/pharos/MainActivity;)V

    .line 423
    .local v7, "listener1":Lcom/netease/pharos/PharosListener;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/netease/pharos/PharosProxy;->setmPharosListener(Lcom/netease/pharos/PharosListener;)V

    .line 424
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->start()V

    goto/16 :goto_0

    .line 428
    .end local v7    # "listener1":Lcom/netease/pharos/PharosListener;
    :pswitch_e
    const-string v18, "MainActivity"

    const-string v19, "\u94fe\u8def\u63a2\u6d4b\u5168\u6d41\u7a0b\u7ed3\u679c"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v18, "\u7ed3\u679c"

    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getLinkCheckResultInfo()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :pswitch_f
    const-string v18, "MainActivity"

    const-string v19, "\u8bbe\u7f6e\u6240\u6709\u53c2\u6570"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 436
    .local v13, "projrctEt":Landroid/widget/EditText;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mProject:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/MainActivity;->mOption:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/MainActivity;->mDecision:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v19, "\u8bbe\u7f6e\u53c2\u6570"

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const-string v19, "\u786e\u5b9a"

    new-instance v20, Lcom/netease/pharos/MainActivity$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/netease/pharos/MainActivity$10;-><init>(Lcom/netease/pharos/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 471
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 476
    .end local v13    # "projrctEt":Landroid/widget/EditText;
    :pswitch_10
    const-string v18, "MainActivity"

    const-string v19, "\u8dd1\u4e00\u904d\u7f51\u7edc\u76d1\u63a7"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mProject:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/netease/pharos/PharosProxy;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/MainActivity;->mOption:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/netease/pharos/PharosProxy;->setmOption(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 480
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mIp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/netease/pharos/PharosProxy;->setmIp(Ljava/lang/String;)V

    .line 483
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 484
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mPort:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/netease/pharos/PharosProxy;->setmPort(Ljava/lang/String;)V

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 488
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/netease/pharos/PharosProxy;->setmHighSpeedUrl(Ljava/lang/String;)V

    .line 491
    :cond_3
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/MainActivity;->mDecision:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/netease/pharos/PharosProxy;->setmDecision(I)V

    .line 494
    new-instance v8, Lcom/netease/pharos/MainActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/netease/pharos/MainActivity$11;-><init>(Lcom/netease/pharos/MainActivity;)V

    .line 523
    .local v8, "listener11":Lcom/netease/pharos/PharosListener;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/netease/pharos/PharosProxy;->setmPharosListener(Lcom/netease/pharos/PharosListener;)V

    .line 524
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netease/pharos/PharosProxy;->start()V

    goto/16 :goto_0

    .line 529
    .end local v8    # "listener11":Lcom/netease/pharos/PharosListener;
    :pswitch_11
    const-string v18, "MainActivity"

    const-string v19, "\u83b7\u53d6\u57fa\u7ad9id"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    .line 531
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u83b7\u53d6\u57fa\u7ad9id = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    :pswitch_12
    const-string v18, "MainActivity"

    const-string v19, "\u83b7\u53d6\u672c\u5730ip"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v18, "MainActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u83b7\u53d6\u672c\u5730ip = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :pswitch_13
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$12;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 555
    :pswitch_14
    const-string v12, "httpdns_test1"

    .line 556
    .local v12, "mIdentify":Ljava/lang/String;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "udttest-03.gph.a.163fen.com"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "g37na-04.gph.netease.com"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    const-string v19, "g37na-11.gph.netease.com"

    aput-object v19, v11, v18

    const/16 v18, 0x3

    const-string v19, "g37na-12.gph.netease.com"

    aput-object v19, v11, v18

    const/16 v18, 0x4

    const-string v19, "whoami.nie.netease.com"

    aput-object v19, v11, v18

    const/16 v18, 0x5

    const-string v19, "impression.update.netease.com"

    aput-object v19, v11, v18

    .line 558
    .local v11, "mDomains":[Ljava/lang/String;
    const-string v18, "wuln"

    const-string v19, "httpdns\u5f00\u59cb\u6309\u94ae"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/netease/pharos/MainActivity$13;-><init>(Lcom/netease/pharos/MainActivity;[Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 584
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 590
    .end local v11    # "mDomains":[Ljava/lang/String;
    .end local v12    # "mIdentify":Ljava/lang/String;
    :pswitch_15
    const-string v18, "wuln"

    const-string v19, "qos\u52a0\u901f"

    invoke-static/range {v18 .. v19}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/netease/pharos/MainActivity$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/pharos/MainActivity$14;-><init>(Lcom/netease/pharos/MainActivity;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 608
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x7f030000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Lcom/netease/pharos/MainActivity;->setContentView(I)V

    .line 115
    iput-object p0, p0, Lcom/netease/pharos/MainActivity;->mContext:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/netease/pharos/MainActivity;->findView()V

    .line 117
    invoke-direct {p0}, Lcom/netease/pharos/MainActivity;->setListener()V

    .line 119
    invoke-direct {p0}, Lcom/netease/pharos/MainActivity;->init()V

    .line 120
    return-void
.end method
