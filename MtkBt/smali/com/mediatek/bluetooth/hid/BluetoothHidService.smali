.class public Lcom/mediatek/bluetooth/hid/BluetoothHidService;
.super Landroid/app/Service;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;,
        Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;
    }
.end annotation


# static fields
.field private static final BT_HID_DEBUG_LOG:I = 0x1

.field private static final BT_HID_ERROR_LOG:I = 0x2

.field private static final BT_HID_INFO_LOG:I = 0x3

.field private static final BT_HID_NOT_FOUNT:Ljava/lang/String; = "BT_HID_NOT_FOUNT"

.field private static final BT_HID_SETTING_INFO:Ljava/lang/String; = "BT_HID_SETTING_INFO"

.field private static final BT_HID_VERB_LOG:I = 0x4

.field private static final BT_HID_WARN_LOG:I = 0x5

.field private static final DEBUG:Z = true

.field public static final FINISH_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.hid.finish"

.field private static final HID_ID_START:I = 0xa

.field private static final TAG:Ljava/lang/String; = "[BT][HID][BluetoothHidService]"

.field private static sHidConnectNotify:I

.field private static sServiceDisable:Z

.field private static sUtInstance:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

.field public static sUtState:Z


# instance fields
.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

.field mCx:Landroid/content/Context;

.field private mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

.field private final mHid:Landroid/bluetooth/IBluetoothHid$Stub;

.field private final mHidServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;

.field private mNM:Landroid/app/NotificationManager;

.field private mNativeData:I

.field mNotifyMap:Ljava/util/Map;

.field mPC:Landroid/preference/PreferenceCategory;

.field mPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerState:I

.field private mServiceHandler:Landroid/os/Handler;

.field private mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

.field mStateMap:Ljava/util/Map;
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

.field mUpdateStateIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xb

    sput v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sHidConnectNotify:I

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sUtState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    iput-object p0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    .line 143
    iput-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNotifyMap:Ljava/util/Map;

    .line 163
    iput-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mPreference:Landroid/preference/Preference;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    .line 256
    iput-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    .line 258
    iput-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 260
    iput-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 332
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$1;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mHid:Landroid/bluetooth/IBluetoothHid$Stub;

    .line 596
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mHidServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;

    .line 898
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$3;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServiceHandler:Landroid/os/Handler;

    .line 1304
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$4;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->listentoSocketNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetReportReqNative(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSendReportReqNative(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetProtocolReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetProtocolReqNative(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverUnplugReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverActivateReqNative()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverDeactivateReqNative()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->wakeupListenerNative()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetIdleReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetIdleReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverAuthorizeReqNative(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/bluetooth/hid/BluetoothHidService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sHidConnectNotify:I

    return v0
.end method

.method static synthetic access$2708()I
    .locals 2

    .prologue
    .line 78
    sget v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sHidConnectNotify:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sHidConnectNotify:I

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->genHidNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    return-object p1
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sServiceDisable:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;)Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverDisconnectReqNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/hid/BluetoothHidService;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sendServiceMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->connectHidDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->disconnectHidDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetReportReqNative(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private native cleanServiceNative()V
.end method

.method private connectHidDevice(Ljava/lang/String;)V
    .locals 2
    .parameter "btAddr"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$1;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    const-string v1, "hidConnectTimeoutThread"

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->setName(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    iput-object p1, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->mBTAddr:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    const-string v1, "connected"

    iput-object v1, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->mState:Ljava/lang/String;

    .line 269
    const/16 v0, 0x69

    iput v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    .line 278
    const-string v0, "connectHidDevice::updateActivityUI:hid_summary_connecting"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 279
    const v0, 0x7f0700b3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V

    .line 280
    const-string v0, "connecting"

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 281
    const-string v0, "connecting"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverConnectReqNative(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->start()V

    .line 286
    :cond_1
    return-void
.end method

.method private convertStatusToInt(Ljava/lang/String;)I
    .locals 2
    .parameter "oriState"

    .prologue
    const/4 v0, 0x0

    .line 532
    if-nez p1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v0

    .line 536
    :cond_1
    const-string v1, "connected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    const/4 v0, 0x2

    goto :goto_0

    .line 538
    :cond_2
    const-string v1, "connecting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "authorize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 540
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :cond_4
    const-string v1, "disconnect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const-string v1, "disconnecting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "unplug"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private disconnectHidDevice(Ljava/lang/String;)V
    .locals 2
    .parameter "btAddr"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$1;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    const-string v1, "hidDisconnectTimeoutThread"

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->setName(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    iput-object p1, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->mBTAddr:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    const-string v1, "disconnect"

    iput-object v1, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->mState:Ljava/lang/String;

    .line 297
    const/16 v0, 0x6a

    iput v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    .line 309
    const v0, 0x7f0700c6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V

    .line 310
    const-string v0, "disconnecting"

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 312
    const-string v0, "disconnecting"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverDisconnectReqNative(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->start()V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    const-string v0, "error state to disconnect"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private native forceClearServerNative()V
.end method

.method private genHidNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 11
    .parameter "type"
    .parameter "deviceName"
    .parameter "deviceaddr"
    .parameter "action"
    .parameter "needSound"

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1235
    .local v1, context:Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1236
    .local v6, tmpIntent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 1237
    .local v7, tmpNoti:Landroid/app/Notification;
    const/4 v5, 0x0

    .line 1238
    .local v5, tmpContentIntent:Landroid/app/PendingIntent;
    const/4 v2, -0x1

    .line 1239
    .local v2, iconID:I
    const/4 v0, 0x0

    .line 1240
    .local v0, clazz:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1241
    .local v3, ticker:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1242
    .local v4, title:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "genHidNotification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 1244
    const v2, 0x7f02002b

    .line 1245
    const-class v8, Lcom/mediatek/bluetooth/hid/BluetoothHidAlert;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1246
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "device_addr"

    invoke-virtual {v8, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v8, "connected"

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1250
    const v8, 0x7f0700b7

    invoke-virtual {p0, v8}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1251
    const v8, 0x7f0700b8

    invoke-virtual {p0, v8}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1252
    new-instance v7, Landroid/app/Notification;

    .end local v7           #tmpNoti:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v2, v3, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1253
    .restart local v7       #tmpNoti:Landroid/app/Notification;
    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 1255
    const-string v8, "action"

    const-string v9, "disconnect"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x1000

    invoke-static {v8, p1, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1258
    const v8, 0x7f0700bb

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v4, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1278
    :cond_0
    :goto_0
    return-object v7

    .line 1260
    :cond_1
    const-string v8, "authorize"

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1261
    const v8, 0x7f0700b9

    invoke-virtual {p0, v8}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1262
    const v8, 0x7f0700ba

    invoke-virtual {p0, v8}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1263
    new-instance v7, Landroid/app/Notification;

    .end local v7           #tmpNoti:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v2, v3, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1264
    .restart local v7       #tmpNoti:Landroid/app/Notification;
    const/16 v8, 0x8

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 1265
    if-eqz p5, :cond_2

    .line 1266
    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 1267
    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 1270
    :cond_2
    const-string v8, "action"

    const-string v9, "authorize"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x1000

    invoke-static {v8, p1, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1273
    const v8, 0x7f0700bc

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v4, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "btAddr"

    .prologue
    .line 1283
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "btAddr"

    .prologue
    const/4 v5, 0x0

    .line 1288
    const-string v4, "BT_HID_SETTING_INFO"

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1290
    .local v2, settings:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 1291
    .local v0, preIndex:I
    const-string v4, "preferenceCount"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1293
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceAddr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BT_HID_NOT_FOUNT"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, tmpAddr:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BT_HID_NOT_FOUNT"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1301
    .end local v3           #tmpAddr:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 1293
    .restart local v3       #tmpAddr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1301
    .end local v3           #tmpAddr:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getDeviceState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "btAddr"

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getHidServiceUtInstance()Lcom/mediatek/bluetooth/hid/BluetoothHidService;
    .locals 2

    .prologue
    .line 178
    const-class v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sUtInstance:Lcom/mediatek/bluetooth/hid/BluetoothHidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native initServiceNative()Z
.end method

.method private native listentoSocketNative()Z
.end method

.method private printLog(Ljava/lang/String;I)V
    .locals 1
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 867
    packed-switch p2, :pswitch_data_0

    .line 887
    :goto_0
    return-void

    .line 869
    :pswitch_0
    const-string v0, "[BT][HID][BluetoothHidService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    :pswitch_1
    const-string v0, "[BT][HID][BluetoothHidService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 875
    :pswitch_2
    const-string v0, "[BT][HID][BluetoothHidService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    :pswitch_3
    const-string v0, "[BT][HID][BluetoothHidService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 881
    :pswitch_4
    const-string v0, "[BT][HID][BluetoothHidService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private sendServiceMsg(ILjava/lang/String;)V
    .locals 5
    .parameter "what"
    .parameter "addr"

    .prologue
    const/4 v4, 0x3

    .line 1209
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1211
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendServiceMsg status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 1212
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-ne p1, v4, :cond_1

    .line 1214
    :cond_0
    const/16 v2, 0x68

    iput v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    .line 1217
    :cond_1
    if-nez p1, :cond_2

    .line 1218
    const/16 v2, 0x64

    iput v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    .line 1221
    :cond_2
    iput p1, v1, Landroid/os/Message;->what:I

    .line 1223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1224
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "device_addr"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1227
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1228
    return-void
.end method

.method private native serverActivateReqNative()V
.end method

.method private native serverAuthorizeReqNative(Ljava/lang/String;Z)V
.end method

.method private native serverConnectReqNative(Ljava/lang/String;)V
.end method

.method private native serverDeactivateReqNative()V
.end method

.method private native serverDisconnectReqNative(Ljava/lang/String;)V
.end method

.method private native serverGetIdleReqNative(Ljava/lang/String;)V
.end method

.method private native serverGetProtocolReqNative(Ljava/lang/String;)V
.end method

.method private native serverGetReportReqNative(Ljava/lang/String;II)V
.end method

.method private native serverSendReportReqNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native serverSetIdleReqNative(Ljava/lang/String;)V
.end method

.method private native serverSetProtocolReqNative(Ljava/lang/String;I)V
.end method

.method private native serverSetReportReqNative(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private native serverUnplugReqNative(Ljava/lang/String;)V
.end method

.method private native stopListentoSocketNative()V
.end method

.method private updateActivityUI(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "btAddr"
    .parameter "summary"
    .parameter "enable"

    .prologue
    .line 573
    const-string v1, "updateActivityUI"

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.BluetoothHidActivity.ACTION_SUMMARY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, tmpInt:Landroid/content/Intent;
    const-string v1, "com.mediatek.bluetooth.BluetoothHidActivity.extra.EXTRA_DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v1, "com.mediatek.bluetooth.BluetoothHidActivity.extra.EXTRA_SUMMARY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v1, "com.mediatek.bluetooth.BluetoothHidActivity.extra.EXTRA_ENABLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    const-string v1, "updateActivityUI:sendBroadcast "

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 582
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 583
    return-void
.end method

.method private updateDeviceState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "deviceAddr"
    .parameter "state"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method private updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "state"
    .parameter "device"

    .prologue
    const/4 v7, 0x4

    .line 506
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mStateMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->convertStatusToInt(Ljava/lang/String;)I

    move-result v2

    .line 507
    .local v2, preState:I
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->convertStatusToInt(Ljava/lang/String;)I

    move-result v0

    .line 509
    .local v0, curState:I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v3, tmpInt:Landroid/content/Intent;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 511
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    const/4 v5, 0x4

    invoke-interface {v4, p2, v5, v0, v2}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 528
    const-string v4, "updateSettingsState"

    invoke-direct {p0, v4, v7}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 529
    return-void

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "[BT][HID][BluetoothHidService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendConnectionStateChange Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method localClearService()V
    .locals 9

    .prologue
    const/16 v8, 0x68

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, timeout:Z
    const/4 v0, 0x0

    .line 752
    .local v0, cnt:I
    iget v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    if-eq v3, v8, :cond_0

    .line 753
    sput-boolean v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sServiceDisable:Z

    .line 754
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverDeactivateReqNative()V

    .line 756
    :goto_0
    iget v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    if-eq v3, v8, :cond_0

    .line 757
    const/16 v3, 0x1388

    if-lt v0, v3, :cond_5

    .line 758
    const/4 v2, 0x1

    .line 771
    :cond_0
    if-eqz v2, :cond_1

    .line 777
    const-string v3, "Waiting DEREGISTER_SERVER_CNF time-out. Force clear server context."

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 779
    iput v8, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    .line 780
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->forceClearServerNative()V

    .line 781
    invoke-direct {p0, v5, v7}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sendServiceMsg(ILjava/lang/String;)V

    .line 783
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    if-eqz v3, :cond_2

    .line 785
    :try_start_0
    const-string v3, "mSocketListener close."

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 786
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;->shutdown()V

    .line 787
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;->join()V

    .line 788
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    .line 789
    const-string v3, "mSocketListener close OK."

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 795
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    if-eqz v3, :cond_3

    .line 797
    :try_start_1
    const-string v3, "mConnectTimeout close."

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 798
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->shutdown()V

    .line 799
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->join()V

    .line 800
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mConnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 801
    const-string v3, "mConnectTimeout close OK."

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 807
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    if-eqz v3, :cond_4

    .line 809
    :try_start_2
    const-string v3, "mDisconnectTimeout close."

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 810
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->shutdown()V

    .line 811
    iget-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;->join()V

    .line 812
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mDisconnectTimeout:Lcom/mediatek/bluetooth/hid/BluetoothHidService$ActionTimeoutThread;

    .line 813
    const-string v3, "mDisconnectTimeout close OK."

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 819
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->stopListentoSocketNative()V

    .line 820
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->cleanServiceNative()V

    .line 821
    return-void

    .line 763
    :cond_5
    const-wide/16 v3, 0x64

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 767
    :goto_4
    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "Waiting for server deregister-cnf was interrupted."

    invoke-direct {p0, v3, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    goto :goto_4

    .line 790
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 791
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v3, "mSocketListener close error."

    invoke-direct {p0, v3, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 802
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 803
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v3, "mConnectTimeout close error."

    invoke-direct {p0, v3, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    goto :goto_2

    .line 814
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 815
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v3, "mDisconnectTimeout close error."

    invoke-direct {p0, v3, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method localCreateService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 824
    iget v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 825
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 827
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mUpdateStateIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 832
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->initServiceNative()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    const-string v0, "Succeed to init BluetoothHidService."

    invoke-direct {p0, v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 834
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Lcom/mediatek/bluetooth/hid/BluetoothHidService$1;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    .line 836
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    const-string v1, "BTHidSocketListener"

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;->setName(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    iput-boolean v4, v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;->mStopped:Z

    .line 838
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mSocketListener:Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService$SocketListenerThread;->start()V

    .line 839
    const-string v0, "SocketListener started."

    invoke-direct {p0, v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 841
    :cond_0
    sput-boolean v4, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sServiceDisable:Z

    .line 843
    const/16 v0, 0x68

    iput v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mServerState:I

    .line 844
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverActivateReqNative()V

    .line 845
    const-string v0, "Pre-enable HID Server"

    invoke-direct {p0, v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    const-string v0, "Failed to init BluetoothHidService."

    invoke-direct {p0, v0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 854
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onBind(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 856
    const-class v1, Landroid/bluetooth/IBluetoothHid;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mHid:Landroid/bluetooth/IBluetoothHid$Stub;

    .line 860
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mHidServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 710
    const-string v0, "Enter onCreate()"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 712
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;

    .line 713
    sget-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sUtState:Z

    if-nez v0, :cond_1

    .line 714
    const-string v0, "exthid_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 718
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mNM:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 719
    const-string v0, "Get Notification-Manager failed. Stop HID service."

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 720
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->stopSelf()V

    .line 722
    :cond_0
    sput-object p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->sUtInstance:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    .line 723
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 724
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mCx:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->localCreateService()V

    .line 731
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 732
    .local v6, b:Landroid/os/IBinder;
    if-nez v6, :cond_2

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bluetooth service not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v6           #b:Landroid/os/IBinder;
    :cond_1
    const-string v0, "exthid_ut"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v6       #b:Landroid/os/IBinder;
    :cond_2
    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 737
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 738
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 742
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 743
    const-string v0, "onDestroy()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 745
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->localClearService()V

    .line 746
    return-void
.end method
