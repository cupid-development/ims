.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field private static final ACTION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "org.codeaurora.intent.action.MSIM_VOICE_CAPABILITY"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final DSDS_TRANSITION_SUPPORTED_MODEM:Ljava/lang/String; = "MPSS.DE."

.field private static final DSDS_TRANSITION_SUPPORTED_MODEM_VERSION:I = 0x5

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_SERVICE_DOWN:I = 0x4

.field private static final EVENT_IMS_SERVICE_UP:I = 0x3

.field private static final EVENT_MSIM_VOICE_CAPABILITY_CHANGED:I = 0x7

.field private static final EVENT_QUERY_MSIM_VOICE_CAPABILITY:I = 0x8

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x6

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final EXTRAS_DSDS_TRANSITION_SUPPORTED:Ljava/lang/String; = "DsdsTransitionSupported"

.field private static final EXTRAS_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "MsimVoiceCapability"

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final PERMISSION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "com.qti.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

.field private static mSimultStackCount:I

.field private static mStackStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_VALID_STACK_STATUS_COUNT:I

.field private mActiveStacks:[Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDsdsTransitionFeatureSupported:Z

.field private mIsDsdv:Z

.field private mIsReceiverRegistered:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNumMultiModeStacks:I

.field private mOnMultiSimConfigChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mSenderRxrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$mdeRegisterFromRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->deRegisterFromRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiSimVoiceCapability(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnMultiSimConfigChanged(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleOnMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioAvailable(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleRadioAvailable(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSubConfigChanged(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterForRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->registerForRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActiveImsStackForSubId(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStackConfig(Lorg/codeaurora/ims/ImsSubController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->updateStackConfig(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 202
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V

    .line 204
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v0

    .line 205
    .local v0, "activeModemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 207
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, p1, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDsdsTransitionFeatureSupported()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 214
    .local p2, "senderRxrs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsSenderRxr;>;"
    .local p3, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 59
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 68
    const/4 v1, 0x6

    iput v1, p0, Lorg/codeaurora/ims/ImsSubController;->MAX_VALID_STACK_STATUS_COUNT:I

    .line 69
    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 79
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 90
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    .line 771
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$2;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 216
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 217
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 220
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 221
    iput-object p3, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 222
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    invoke-direct {v0, p0, p4}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 223
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 225
    return-void
.end method

.method private broadcastConcurrentCallsIntent(I)V
    .locals 3
    .param p1, "voiceCapability"    # I

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.MSIM_VOICE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MsimVoiceCapability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is dsds transition feature supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    const-string v1, "DsdsTransitionSupported"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    const-string v2, "com.qti.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "modemBaseband"    # Ljava/lang/String;
    .param p2, "modemType"    # Ljava/lang/String;

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private createImsSenderRxr(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 236
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    .line 237
    .local v0, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsServiceUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsServiceDown(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 245
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V

    .line 246
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private deRegisterFromRadioEvents(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 562
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 568
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 569
    const-string v1, "deRegisterFromRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    return-void

    .line 573
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 577
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 578
    .local v1, "isPrimarySubscription":Z
    :goto_0
    if-nez v1, :cond_3

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deRegisterFromRadioEvents: phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not primary subscription."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    return-void

    .line 584
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    .line 585
    return-void

    .line 563
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    .end local v1    # "isPrimarySubscription":Z
    :cond_4
    :goto_1
    const-string v0, "deRegisterFromRadioEvents: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private disposeImsSenderRxr(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 849
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disposeImsSenderRxr: phoneId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 855
    .local v0, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->dispose()V

    .line 856
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 857
    return-void

    .line 850
    .end local v0    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    :cond_1
    :goto_0
    const-string v0, "disposeImsSenderRxr: cannot find instance to dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method private handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 371
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    .line 373
    .local v0, "errorCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMultiSimVoiceCapability errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    return-void

    .line 377
    .end local v0    # "errorCode":I
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 378
    const-string v0, "handleMultiSimVoiceCapability ar.result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    return-void

    .line 382
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 383
    return-void
.end method

.method private handleOnMultiSimConfigChanged(I)V
    .locals 2
    .param p1, "activeModemCount"    # I

    .line 821
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string v0, "handleOnMultiSimConfigChanged: already disposed.Ignore."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 826
    .local v0, "prevModemCount":I
    if-ne p1, v0, :cond_1

    .line 827
    const-string v1, "The number of slots is equal to the current size, nothing to do"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    return-void

    .line 830
    :cond_1
    if-le p1, v0, :cond_2

    .line 831
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToMultiSim(II)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToSingleSim(II)V

    .line 834
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 836
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyOnMultiSimConfigChanged(II)V

    .line 837
    return-void
.end method

.method private handleRadioAvailable(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 494
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 504
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 505
    const-string v1, "handleRadioAvailable: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 510
    if-nez p1, :cond_2

    .line 513
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 513
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    .line 518
    :cond_2
    return-void

    .line 495
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    :cond_3
    :goto_0
    const-string v0, "handleRadioAvailable: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 497
    return-void
.end method

.method private handleRafInfo()V
    .locals 10

    .line 715
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Multimode stacks greater than zero. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 722
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .line 723
    .local v1, "tempPhoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 724
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 725
    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 726
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_2

    .line 727
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 728
    .local v5, "subId":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v6

    .line 729
    .local v6, "rafInfo":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRafInfo: Phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, v6, v7}, Lorg/codeaurora/ims/ImsSubController;->isMultiModeSupported(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 731
    iget v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    add-int/2addr v8, v3

    iput v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 732
    move v1, v2

    .line 734
    .end local v5    # "subId":I
    .end local v6    # "rafInfo":J
    :cond_1
    goto :goto_1

    .line 735
    :cond_2
    const-string v3, "handleRafInfo: subIds not valid"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRafInfo: NumPhones: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Multiple Multimode stacks: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    iget v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-le v2, v3, :cond_5

    .line 748
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v2, :cond_4

    .line 749
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 750
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 757
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    .line 760
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 762
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 763
    const-string v2, "handleRafInfo: registered for DDS switch..."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 766
    :cond_5
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 768
    :goto_2
    return-void
.end method

.method private handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "ignoreStackCount"    # Z

    .line 341
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    const-string v0, "handleSubConfigChanged: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    return-void

    .line 345
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 347
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 348
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 349
    .local v0, "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    if-nez p2, :cond_2

    .line 350
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result v1

    sput v1, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 352
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 353
    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 355
    .local v1, "activeStacks":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v2, v3, :cond_3

    .line 356
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 360
    const-string v2, "handleSubConfigChanged ar.userObj is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    return-void

    .line 364
    :cond_4
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 365
    .end local v0    # "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    .end local v1    # "activeStacks":[Z
    goto :goto_1

    .line 366
    :cond_5
    const-string v0, "ar.result and ar.exception are null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :goto_1
    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 326
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkArgument(Z)V

    .line 327
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v1

    .line 328
    .local v1, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubConfigException error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 330
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 334
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    goto :goto_1

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 3

    .line 642
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 643
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 645
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 646
    const-string v0, "initSubscriptionStatus: [Multi-sim] Using RAF and DDS to decide IMS Sub"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfo()V

    goto :goto_0

    .line 650
    :cond_0
    const-string v1, "initSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 652
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 654
    :goto_0
    return-void
.end method

.method private isDisposed()Z
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDsdsTransitionFeatureSupported()Z
    .locals 8

    .line 398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->getDefaultPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    goto :goto_0

    .line 400
    :cond_0
    move v0, v1

    :goto_0
    nop

    .line 401
    .local v0, "isDsdsTransitionSupported":Z
    if-nez v0, :cond_1

    .line 402
    return v1

    .line 404
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getBasebandVersion()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "basebandVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BasebandVersion string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    return v1

    .line 410
    :cond_2
    const-string v3, "(?<=\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "output":[Ljava/lang/String;
    array-length v4, v3

    if-gtz v4, :cond_3

    .line 412
    return v1

    .line 414
    :cond_3
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 415
    .local v4, "value":I
    aget-object v5, v3, v1

    const-string v7, "MPSS.DE."

    invoke-direct {p0, v5, v7}, Lorg/codeaurora/ims/ImsSubController;->containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 416
    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/codeaurora/ims/ImsSubController;->isSupportedModemVersion(II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    nop

    .line 415
    :goto_1
    return v1
.end method

.method private isMultiModeSupported(J)Z
    .locals 4
    .param p1, "nRatMask"    # J

    .line 709
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportedModemVersion(II)Z
    .locals 1
    .param p1, "modemVersion"    # I
    .param p2, "supportedModemVersion"    # I

    .line 426
    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyOnMultiSimConfigChanged(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnMultiSimConfigChanged: prevModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    if-ne p1, p2, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 321
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;->onMultiSimConfigChanged(II)V

    .line 322
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;
    goto :goto_0

    .line 323
    :cond_1
    return-void
.end method

.method private notifyStackConfigChanged([ZI)V
    .locals 2
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStackConfigChanged: activeStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 310
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([ZI)V

    .line 311
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private registerForRadioEvents(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 521
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 528
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 529
    const-string v1, "registerForRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    return-void

    .line 533
    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 534
    .local v3, "isPrimarySubscription":Z
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 535
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    nop

    .line 536
    .local v2, "isRadioAvailable":Z
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 537
    if-eqz v2, :cond_4

    .line 538
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 543
    :cond_4
    if-nez v3, :cond_5

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRadioEvents: phoneId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not primary subscription."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    return-void

    .line 549
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 549
    const/4 v5, 0x7

    invoke-virtual {v0, v1, v5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 551
    if-eqz v2, :cond_6

    .line 554
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 554
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    .line 559
    :cond_6
    return-void

    .line 522
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    .end local v2    # "isRadioAvailable":Z
    .end local v3    # "isPrimarySubscription":Z
    :cond_7
    :goto_2
    const-string v0, "registerForRadioEvents: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 524
    return-void
.end method

.method private switchToMultiSim(II)V
    .locals 3
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 861
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 862
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 863
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, v1, v0, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private switchToSingleSim(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 841
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 842
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 843
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 844
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->disposeImsSenderRxr(I)V

    .line 841
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 846
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateActiveImsStackForPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 659
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string v0, "updateActiveImsStackForPhoneId return as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    return-void

    .line 664
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    return-void

    .line 669
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 670
    if-ne v0, p1, :cond_2

    .line 671
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 673
    :cond_2
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 669
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0, v1, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 678
    return-void
.end method

.method private updateActiveImsStackForSubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 683
    const/4 v0, 0x0

    .line 689
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    .line 693
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 695
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 700
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveImsStackForSubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 702
    return-void
.end method

.method private updateStackConfig(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStackConfig phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsDsdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const-string v1, "updateStackConfig nothing to update"

    if-eqz v0, :cond_3

    .line 593
    sget-object v0, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 594
    const-string v0, "updateStackConfig Stacks are not yet initialized"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    return-void

    .line 598
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 599
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    return-void

    .line 603
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 604
    .local v0, "activeStacks":[Z
    sget-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 605
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v1, v2, :cond_2

    .line 606
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 611
    .end local v0    # "activeStacks":[Z
    :cond_3
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 612
    const-string v0, "updateStackConfig: unregistering BroadcastReceiver"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 614
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 617
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aget-boolean v3, v0, p1

    if-ne v3, p2, :cond_5

    .line 618
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    return-void

    .line 622
    :cond_5
    if-nez p2, :cond_6

    .line 631
    iput v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 634
    :cond_6
    aput-boolean p2, v0, p1

    .line 635
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 637
    .restart local v0    # "activeStacks":[Z
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 638
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 868
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const-string v0, "dispose: returning as already disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    return-void

    .line 872
    :cond_0
    const-string v0, "dispose ImsSubController, unregistering handler and listeners"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 874
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 875
    .local v1, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 876
    .end local v1    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 878
    .local v1, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 879
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 880
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsServiceUp(Landroid/os/Handler;)V

    .line 881
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsServiceDown(Landroid/os/Handler;)V

    .line 882
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 883
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    .line 884
    .end local v1    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    goto :goto_1

    .line 885
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 888
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 889
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 890
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 891
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 892
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 893
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 894
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 895
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 896
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 897
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 898
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 899
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 900
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 901
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 902
    return-void
.end method

.method public getActiveModemCount()I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p1, "phoneId"    # I

    .line 798
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 799
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0

    .line 801
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    return-object v0
.end method

.method public isDsdv()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    .param p2, "phoneId"    # I

    .line 125
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    return-void

    .line 129
    :cond_0
    if-eqz p1, :cond_2

    .line 132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 138
    return-void

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 266
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "registerListener, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    return-void

    .line 270
    :cond_0
    if-eqz p1, :cond_2

    .line 273
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 165
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    return-void

    .line 169
    :cond_0
    if-eqz p1, :cond_2

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "registerListener :: duplicate OnMultiSimConfigChanged listener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "simConfigChangedListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDsdv(Z)V
    .locals 0
    .param p1, "isDsdv"    # Z

    .line 251
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 252
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 148
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 288
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "unregisterListener, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 187
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "simConfigChangedListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
