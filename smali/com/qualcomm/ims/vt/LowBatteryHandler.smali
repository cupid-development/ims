.class public Lcom/qualcomm/ims/vt/LowBatteryHandler;
.super Ljava/lang/Object;
.source "LowBatteryHandler.java"

# interfaces
.implements Lorg/codeaurora/ims/ICallListListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# instance fields
.field private final isCarrierOneSupported:Z

.field private mBatteryLevel:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsLowBattery:Z

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetisCarrierOneSupported(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLowBattery(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceSubs(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSubs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsLowBattery(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisconnectVideoCalls(Lcom/qualcomm/ims/vt/LowBatteryHandler;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/ImsServiceSub;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "VideoCall_LowBattery"

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    .line 42
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    .line 90
    new-instance v0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;-><init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSubs:Ljava/util/List;

    .line 47
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method private disconnectVideoCalls(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 2
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 171
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "disconnectVideoCalls "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)V

    .line 173
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)V

    .line 174
    return-void
.end method

.method private disconnectVideoCalls(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)V
    .locals 5
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 180
    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 181
    .local v1, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    sget-object v2, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectVideoCalls session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/16 v2, 0x1f9

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 185
    .end local v1    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 186
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 2

    .line 80
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LowBatteryHandler: Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Ljava/util/List;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/qualcomm/ims/vt/LowBatteryHandler;"
        }
    .end annotation

    .line 61
    .local p0, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 66
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LowBatteryHandler: Multiple initialization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 70
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 73
    return-void
.end method

.method public isLowBattery(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 160
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 115
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionAdded callSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 123
    .local v1, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 124
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v4, 0x1f5

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 135
    .end local v1    # "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    .end local v2    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    goto :goto_0

    .line 137
    :cond_2
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 147
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 142
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 152
    return-void
.end method
