.class public Lcom/mediatek/bluetooth/pan/BluetoothPanService;
.super Landroid/app/Service;
.source "BluetoothPanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;,
        Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final DEBUG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String; = null

.field private static final DNS_DEFAULT_SERVER:[Ljava/lang/String; = null

.field private static final MESSAGE_DISPLAY:Ljava/lang/String; = "show toast"

.field private static final MESSAGE_DISPLAY_ID:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PAN_ID_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[BT][PAN][BluetoothPANService]"

.field private static sPanAuthorizeNotify:I

.field private static sServerState:Z

.field public static sUtState:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mContext:Landroid/content/Context;

.field private mDhcpRange:[Ljava/lang/String;

.field private mDnsServers:[Ljava/lang/String;

.field private mHasInitiated:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mNativeData:I

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mNoti:Landroid/app/Notification;

.field mNotifyId:I

.field mNotifyMap:Ljava/util/Map;

.field private final mPan:Landroid/bluetooth/IBluetoothPan$Stub;

.field private final mPanAction:Lcom/mediatek/bluetooth/pan/IBluetoothPanAction$Stub;

.field private mPanDevices:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Landroid/os/Handler;

.field private mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

.field private mTetheringOn:Z

.field private mTetheringReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateGNStateIntent:Landroid/content/Intent;

.field private mUpdateNAPStateIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothProfile;->getProfileStart(I)I

    move-result v0

    sput v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->PAN_ID_START:I

    .line 120
    sget v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->PAN_ID_START:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    .line 126
    sput-boolean v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v4

    const-string v1, "192.168.45.2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 172
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "8.8.8.8"

    aput-object v1, v0, v3

    const-string v1, "8.8.4.4"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->DNS_DEFAULT_SERVER:[Ljava/lang/String;

    .line 176
    sput-boolean v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sUtState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mUpdateGNStateIntent:Landroid/content/Intent;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mUpdateNAPStateIntent:Landroid/content/Intent;

    .line 128
    iput-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    .line 134
    iput-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    .line 136
    iput-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    .line 138
    iput v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 142
    iput-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    .line 250
    new-instance v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$1;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 400
    new-instance v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$2;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanAction:Lcom/mediatek/bluetooth/pan/IBluetoothPanAction$Stub;

    .line 522
    new-instance v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$3;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPan:Landroid/bluetooth/IBluetoothPan$Stub;

    .line 1159
    new-instance v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$4;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/pan/BluetoothPanService;ILandroid/bluetooth/BluetoothDevice;Z)Landroid/app/Notification;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->genPanNotification(ILandroid/bluetooth/BluetoothDevice;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/bluetooth/pan/BluetoothPanService;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringOn:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/bluetooth/pan/BluetoothPanService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/pan/BluetoothPanService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->listentoSocketNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->wakeupListenerNative()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/pan/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->disconnectPanServerDevices()V

    return-void
.end method

.method private callback_pan_handle_activate_cnf(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 855
    if-eqz p1, :cond_0

    .line 856
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    .line 857
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateProfileState(I)V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateProfileState(I)V

    goto :goto_0
.end method

.method private callback_pan_handle_connect_cnf(ZLjava/lang/String;I)V
    .locals 10
    .parameter "result"
    .parameter "deviceAddr"
    .parameter "unit"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 952
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 953
    .local v5, toastMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 954
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 955
    .local v3, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, deviceName:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 959
    const-string v6, "[BT][PAN][BluetoothPANService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow device when callback_pan_handle_connect_cnf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_0
    return-void

    .line 964
    :cond_0
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    .line 965
    .local v4, prevState:I
    if-eqz p1, :cond_5

    .line 966
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-nez v6, :cond_4

    .line 967
    const v6, 0x7f070117

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 973
    :cond_1
    :goto_1
    :try_start_0
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    invoke-direct {p0, p3, v6}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->enableTethering(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    const/4 v6, 0x2

    #setter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3, v6}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$702(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;I)I

    .line 981
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 982
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    sget v7, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget v6, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    .line 986
    :cond_2
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 987
    iget v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-direct {p0, v6, v0, v9}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->genPanNotification(ILandroid/bluetooth/BluetoothDevice;Z)Landroid/app/Notification;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    .line 988
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1004
    :cond_3
    :goto_2
    invoke-direct {p0, v9, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sendServiceMsg(ILjava/lang/String;)V

    .line 1005
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v7

    invoke-direct {p0, v4, v6, v0, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 968
    :cond_4
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 969
    const v6, 0x7f070115

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 974
    :catch_0
    move-exception v2

    .line 975
    .local v2, e:Ljava/io/IOException;
    const-string v6, "[BT][PAN][BluetoothPANService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error enableTethering :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 990
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-nez v6, :cond_6

    .line 991
    const v6, 0x7f070118

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 996
    :goto_3
    #setter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3, v9}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$702(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;I)I

    .line 998
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 999
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 1000
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    .line 993
    :cond_6
    const v6, 0x7f070116

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private callback_pan_handle_connect_ind(ILjava/lang/String;I)V
    .locals 8
    .parameter "service"
    .parameter "deviceAddr"
    .parameter "unit"

    .prologue
    .line 913
    if-nez p1, :cond_0

    iget-boolean v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringOn:Z

    if-nez v5, :cond_0

    .line 914
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->disconnectPanDevice(Ljava/lang/String;)V

    .line 949
    :goto_0
    return-void

    .line 918
    :cond_0
    const/4 v4, 0x0

    .line 919
    .local v4, prevState:I
    const/4 v1, 0x2

    .line 920
    .local v1, deviceState:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 921
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 923
    .local v3, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-nez v3, :cond_2

    .line 924
    new-instance v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .end local v3           #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;II)V

    .line 925
    .restart local v3       #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    :goto_1
    :try_start_0
    invoke-direct {p0, p3, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->enableTethering(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    invoke-direct {p0, v4, v1, v0, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    .line 941
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 942
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    sget v6, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget v5, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    .line 946
    :cond_1
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 947
    iget v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v0, v6}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->genPanNotification(ILandroid/bluetooth/BluetoothDevice;Z)Landroid/app/Notification;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    .line 948
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    iget-object v7, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 927
    :cond_2
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    .line 928
    #setter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3, v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$702(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;I)I

    .line 929
    #setter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$802(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;I)I

    goto :goto_1

    .line 934
    :catch_0
    move-exception v2

    .line 935
    .local v2, e:Ljava/io/IOException;
    const-string v5, "[BT][PAN][BluetoothPANService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error enableTethering :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private callback_pan_handle_connection_authorize_ind(ILjava/lang/String;)V
    .locals 8
    .parameter "service"
    .parameter "deviceAddr"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 878
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringOn:Z

    if-nez v4, :cond_0

    .line 879
    const v4, 0x7f070119

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, toastMsg:Ljava/lang/String;
    invoke-direct {p0, v7, v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sendServiceMsg(ILjava/lang/String;)V

    .line 882
    invoke-virtual {p0, p2, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->authorizeRsp(Ljava/lang/String;Z)V

    .line 910
    .end local v3           #toastMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 886
    :cond_0
    const/4 v1, 0x1

    .line 887
    .local v1, deviceState:I
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 888
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 890
    .local v2, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-nez v2, :cond_3

    .line 891
    new-instance v2, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .end local v2           #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    invoke-direct {v2, p0, v1, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;II)V

    .line 892
    .restart local v2       #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    :cond_1
    invoke-direct {p0, v7, v1, v0, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    .line 902
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 903
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    sget v5, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget v4, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sPanAuthorizeNotify:I

    .line 907
    :cond_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 908
    iget v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-direct {p0, v4, v0, v6}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->genPanNotification(ILandroid/bluetooth/BluetoothDevice;Z)Landroid/app/Notification;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    .line 909
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNoti:Landroid/app/Notification;

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 894
    :cond_3
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 895
    invoke-virtual {p0, p2, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->authorizeRsp(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private callback_pan_handle_deactivate_cnf(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 864
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    .line 865
    if-eqz p1, :cond_0

    .line 866
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateProfileState(I)V

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateProfileState(I)V

    goto :goto_0
.end method

.method private callback_pan_handle_disconnect_cnf(ZLjava/lang/String;)V
    .locals 9
    .parameter "result"
    .parameter "deviceAddr"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1042
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1043
    .local v5, toastMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1044
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 1045
    .local v2, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, deviceName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1048
    .local v4, state:I
    if-nez v2, :cond_0

    .line 1050
    const-string v6, "[BT][PAN][BluetoothPANService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow device when callback_pan_handle_disconnect_cnf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :goto_0
    return-void

    .line 1055
    :cond_0
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v3

    .line 1057
    .local v3, prevState:I
    if-eqz p1, :cond_4

    .line 1058
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-nez v6, :cond_3

    .line 1059
    const v6, 0x7f07011c

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1065
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1068
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 1069
    iget-object v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1081
    :cond_2
    :goto_2
    invoke-direct {p0, v8, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sendServiceMsg(ILjava/lang/String;)V

    .line 1082
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1060
    :cond_3
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1061
    const v6, 0x7f07011a

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1062
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->stopNetworkConfig()Z

    goto :goto_1

    .line 1072
    :cond_4
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-nez v6, :cond_6

    .line 1073
    const v6, 0x7f07011b

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1077
    :cond_5
    :goto_3
    const/4 v6, 0x2

    #setter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v2, v6}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$702(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;I)I

    .line 1078
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    goto :goto_2

    .line 1074
    :cond_6
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 1075
    const v6, 0x7f07011d

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private callback_pan_handle_disconnect_ind(Ljava/lang/String;)V
    .locals 7
    .parameter "deviceAddr"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1010
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1011
    .local v3, toastMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1012
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 1013
    .local v2, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, deviceName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1017
    const-string v4, "[BT][PAN][BluetoothPANService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknow device when callback_pan_handle_disconnect_ind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_0
    return-void

    .line 1022
    :cond_0
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1023
    const v4, 0x7f07011f

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1029
    :cond_1
    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sendServiceMsg(ILjava/lang/String;)V

    .line 1031
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1034
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 1035
    iget-object v4, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1037
    :cond_2
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v5

    invoke-direct {p0, v4, v6, v0, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1024
    :cond_3
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1025
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->stopNetworkConfig()Z

    .line 1026
    const v4, 0x7f07011e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private native cleanServiceNative()V
.end method

.method private createNewTetheringAddressLocked(I)Ljava/lang/String;
    .locals 5
    .parameter "unit"

    .prologue
    const/4 v4, 0x2

    .line 420
    const-string v1, "192.168.44.1"

    .line 421
    .local v1, address:Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, addr:[Ljava/lang/String;
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 423
    .local v2, newIp:Ljava/lang/Integer;
    aget-object v3, v0, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 424
    return-object v1
.end method

.method private disconnectPanServerDevices()V
    .locals 7

    .prologue
    .line 377
    const-string v5, "[BT][PAN][BluetoothPANService]"

    const-string v6, "disconnect all remote panu devices"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 381
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 382
    .local v3, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-nez v3, :cond_2

    .line 383
    const-string v5, "[BT][PAN][BluetoothPANService]"

    const-string v6, "disconnectPanServerDevices invalid device!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    :cond_1
    return-void

    .line 386
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, deviceAddr:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 389
    iget-object v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 392
    :cond_3
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    .line 393
    .local v4, state:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v5

    if-nez v5, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->disconnectPanDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableTethering(II)Ljava/lang/String;
    .locals 21
    .parameter "unit"
    .parameter "role"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateTetherState:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V

    .line 431
    const-string v18, "network_management"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 432
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v17

    .line 433
    .local v17, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "connectivity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 434
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, bluetoothRegexs:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v6, v18

    const-string v19, "\\d"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, iface:Ljava/lang/String;
    const-string v18, "[BT][PAN][BluetoothPANService]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enableTethering interface name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .line 442
    .local v9, currentIfaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 448
    const/4 v11, 0x0

    .line 449
    .local v11, found:Z
    move-object v4, v9

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v15, :cond_0

    aget-object v8, v4, v12

    .line 450
    .local v8, currIface:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 451
    const/4 v11, 0x1

    .line 456
    .end local v8           #currIface:Ljava/lang/String;
    :cond_0
    if-nez v11, :cond_3

    .line 457
    const/4 v3, 0x0

    .line 508
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #found:Z
    .end local v12           #i$:I
    .end local v15           #len$:I
    :cond_1
    :goto_1
    return-object v3

    .line 443
    :catch_0
    move-exception v10

    .line 444
    .local v10, e:Landroid/os/RemoteException;
    const-string v18, "[BT][PAN][BluetoothPANService]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error listing Interfaces :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v3, 0x0

    goto :goto_1

    .line 449
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #currIface:Ljava/lang/String;
    .restart local v11       #found:Z
    .restart local v12       #i$:I
    .restart local v15       #len$:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 460
    .end local v8           #currIface:Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->createNewTetheringAddressLocked(I)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, address:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 462
    const/4 v3, 0x0

    goto :goto_1

    .line 465
    :cond_4
    const/4 v14, 0x0

    .line 467
    .local v14, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v14

    .line 468
    if-eqz v14, :cond_1

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, addr:Ljava/net/InetAddress;
    invoke-virtual {v14}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v16

    .line 471
    .local v16, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 472
    if-eqz v16, :cond_5

    if-eqz v2, :cond_5

    const-string v18, "0.0.0.0"

    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "::0"

    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 479
    :cond_5
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 481
    :cond_6
    invoke-virtual {v14}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 482
    const-string v18, "running"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 483
    new-instance v18, Landroid/net/LinkAddress;

    const/16 v19, 0x18

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    :try_start_2
    move-object/from16 v0, v17

    invoke-interface {v0, v13, v14}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 496
    if-nez p2, :cond_7

    .line 497
    :try_start_3
    invoke-virtual {v7, v13}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1

    .line 498
    const-string v18, "[BT][PAN][BluetoothPANService]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error tethering "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 504
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v16           #linkAddr:Landroid/net/LinkAddress;
    :catch_1
    move-exception v10

    .line 505
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v18, "[BT][PAN][BluetoothPANService]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error configuring interface "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 492
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v2       #addr:Ljava/net/InetAddress;
    .restart local v16       #linkAddr:Landroid/net/LinkAddress;
    :catch_2
    move-exception v10

    .line 493
    .local v10, e:Ljava/lang/Exception;
    :try_start_4
    const-string v18, "[BT][PAN][BluetoothPANService]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error set interface config"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 500
    .end local v10           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->startNetworkConfig()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method private native forceClearServerNative()V
.end method

.method private genPanNotification(ILandroid/bluetooth/BluetoothDevice;Z)Landroid/app/Notification;
    .locals 16
    .parameter "type"
    .parameter "device"
    .parameter "needSound"

    .prologue
    .line 1087
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 1088
    .local v7, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-nez v7, :cond_0

    .line 1089
    const-string v13, "[BT][PAN][BluetoothPANService]"

    const-string v14, "genPanNotification invalid device!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v12, 0x0

    .line 1155
    :goto_0
    return-object v12

    .line 1093
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1095
    .local v3, deviceName:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1096
    .local v11, tmpIntent:Landroid/content/Intent;
    const/4 v12, 0x0

    .line 1097
    .local v12, tmpNoti:Landroid/app/Notification;
    const/4 v10, 0x0

    .line 1098
    .local v10, tmpContentIntent:Landroid/app/PendingIntent;
    const/4 v4, -0x1

    .line 1099
    .local v4, iconID:I
    const/4 v2, 0x0

    .line 1100
    .local v2, clazz:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1101
    .local v8, ticker:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1102
    .local v9, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1104
    .local v1, action:Ljava/lang/String;
    const-string v13, "[BT][PAN][BluetoothPANService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "genPanNotification "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";device_state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const v4, 0x1080080

    .line 1108
    const-class v13, Lcom/mediatek/bluetooth/pan/BluetoothPanAlert;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string v14, "device_addr"

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 1111
    .local v6, notifyMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1113
    .local v5, notifyFlags:I
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 1114
    const/4 v5, 0x2

    .line 1116
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v13

    if-nez v13, :cond_3

    .line 1117
    const v13, 0x7f070114

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1118
    const v13, 0x7f070112

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1119
    const v13, 0x7f070113

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1120
    const-string v1, "bt_pan_NAP_device_connected"

    .line 1143
    :cond_1
    :goto_1
    new-instance v12, Landroid/app/Notification;

    .end local v12           #tmpNoti:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v12, v4, v8, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1144
    .restart local v12       #tmpNoti:Landroid/app/Notification;
    iput v5, v12, Landroid/app/Notification;->flags:I

    .line 1145
    if-eqz p3, :cond_2

    .line 1146
    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 1147
    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 1150
    :cond_2
    const-string v13, "action"

    invoke-virtual {v11, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x1000

    move/from16 v0, p1

    invoke-static {v13, v0, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13, v9, v6, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1121
    :cond_3
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1122
    const v13, 0x7f070111

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1123
    const v13, 0x7f07010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1124
    const v13, 0x7f070110

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1125
    const-string v1, "bt_pan_GN_device_connected"

    goto :goto_1

    .line 1127
    :cond_4
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1128
    const/16 v5, 0x8

    .line 1130
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v13

    if-nez v13, :cond_5

    .line 1131
    const v13, 0x7f07010e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1132
    const v13, 0x7f07010c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1133
    const v13, 0x7f07010d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1134
    const-string v1, "bt_pan_NAP_device_authorize"

    goto/16 :goto_1

    .line 1135
    :cond_5
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v7}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1136
    const v13, 0x7f07010b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1137
    const v13, 0x7f070109

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1138
    const v13, 0x7f07010a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1139
    const-string v1, "bt_pan_GN_device_authorize"

    goto/16 :goto_1
.end method

.method private native initServiceNative()Z
.end method

.method private native listentoSocketNative()Z
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 180
    const-string v0, "[BT][PAN][BluetoothPANService]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private sendServiceMsg(ILjava/lang/String;)V
    .locals 5
    .parameter "what"
    .parameter "message"

    .prologue
    .line 840
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 843
    .local v1, msg:Landroid/os/Message;
    const-string v2, "[BT][PAN][BluetoothPANService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendServiceMsg status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput p1, v1, Landroid/os/Message;->what:I

    .line 847
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 848
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "show toast"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 851
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 852
    return-void
.end method

.method private native serverActivateReqNative()V
.end method

.method private static native serverAuthorizeRspNative(Ljava/lang/String;Z)V
.end method

.method private native serverConnectReqNative(ILjava/lang/String;)V
.end method

.method private native serverDeactivateReqNative()V
.end method

.method private static native serverDisconnectReqNative(Ljava/lang/String;)V
.end method

.method private startNetworkConfig()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 220
    :try_start_0
    const-string v2, "[BT][PAN][BluetoothPANService]"

    const-string v3, "start Tethering mDhcp Range"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDhcpRange:[Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :try_start_1
    const-string v2, "[BT][PAN][BluetoothPANService]"

    const-string v3, "set Dns Forwarders"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDnsServers:[Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[BT][PAN][BluetoothPANService]"

    const-string v3, "startNetworkConfig error when startTethering"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 231
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "[BT][PAN][BluetoothPANService]"

    const-string v3, "startNetworkConfig error when setDnsForwarders"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private native stopListentoSocketNative()V
.end method

.method private stopNetworkConfig()Z
    .locals 3

    .prologue
    .line 240
    :try_start_0
    const-string v1, "[BT][PAN][BluetoothPANService]"

    const-string v2, "stopNetworkConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "[BT][PAN][BluetoothPANService]"

    const-string v2, "error when stopTethering"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 245
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateProfileState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 216
    return-void
.end method

.method private updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .parameter "prevState"
    .parameter "state"
    .parameter "device"
    .parameter "role"

    .prologue
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSettingsState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pan Device state : device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    const/4 v3, 0x5

    invoke-interface {v2, p3, v3, p2, p1}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[BT][PAN][BluetoothPANService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendConnectionStateChange Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method public authorizeRsp(Ljava/lang/String;Z)V
    .locals 4
    .parameter "btAddr"
    .parameter "result"

    .prologue
    .line 324
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 329
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 331
    .local v1, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-eqz v1, :cond_0

    .line 335
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-static {p1, p2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->serverAuthorizeRspNative(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public connectPanDevice(Ljava/lang/String;I)V
    .locals 4
    .parameter "btAddr"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    .line 344
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 345
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v1, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    invoke-direct {v1, p0, v3, p2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;II)V

    .line 351
    .local v1, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    iget-object v2, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3, v0, p2}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    .line 355
    invoke-direct {p0, p2, p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->serverConnectReqNative(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectPanDevice(Ljava/lang/String;)V
    .locals 5
    .parameter "btAddr"

    .prologue
    .line 359
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 360
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 362
    .local v1, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-nez v1, :cond_0

    .line 364
    const-string v3, "[BT][PAN][BluetoothPANService]"

    const-string v4, "unknown device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 369
    :cond_0
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v2

    .line 370
    .local v2, prevState:I
    const/4 v3, 0x3

    #setter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v1, v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$702(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;I)I

    .line 371
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v3

    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    .line 372
    invoke-static {p1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->serverDisconnectReqNative(Ljava/lang/String;)V

    goto :goto_0
.end method

.method localClearService()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 741
    const/4 v7, 0x0

    .line 742
    .local v7, timeout:Z
    const/4 v0, 0x0

    .line 744
    .local v0, cnt:I
    sget-boolean v8, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    if-eqz v8, :cond_4

    .line 746
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->serverDeactivateReqNative()V

    .line 747
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 748
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;

    .line 749
    .local v5, panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    if-eqz v5, :cond_0

    .line 750
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mState:I
    invoke-static {v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$700(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v6

    .line 751
    .local v6, prevState:I
    if-eqz v6, :cond_0

    .line 752
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, deviceAddr:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 754
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    .line 755
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    iget v9, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNotifyId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 757
    :cond_1
    #getter for: Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->mLocalRole:I
    invoke-static {v5}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;->access$800(Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;)I

    move-result v8

    invoke-direct {p0, v6, v10, v1, v8}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateSettingsState(IILandroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 770
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #deviceAddr:Ljava/lang/String;
    .end local v5           #panDevice:Lcom/mediatek/bluetooth/pan/BluetoothPanService$BluetoothPanDevice;
    .end local v6           #prevState:I
    :cond_2
    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_1
    add-int/lit8 v0, v0, 0x64

    .line 763
    :cond_3
    sget-boolean v8, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    if-eqz v8, :cond_4

    .line 764
    const/16 v8, 0x1388

    if-lt v0, v8, :cond_2

    .line 765
    const/4 v7, 0x1

    .line 780
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz v7, :cond_5

    .line 787
    const-string v8, "[BT][PAN][BluetoothPANService]"

    const-string v9, "Waiting DEREGISTER_SERVER_CNF time-out. Force clear server context."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sput-boolean v10, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    .line 790
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->forceClearServerNative()V

    .line 792
    :cond_5
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    if-eqz v8, :cond_6

    .line 794
    :try_start_1
    const-string v8, "mSocketListener close."

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V

    .line 795
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    invoke-virtual {v8}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;->shutdown()V

    .line 796
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;->join(J)V

    .line 797
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    .line 798
    const-string v8, "mSocketListener close OK."

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 807
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->stopListentoSocketNative()V

    .line 808
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->cleanServiceNative()V

    .line 809
    return-void

    .line 771
    .restart local v4       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 773
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v8, "[BT][PAN][BluetoothPANService]"

    const-string v9, "Waiting for server deregister-cnf was interrupted."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 799
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .line 801
    .restart local v3       #e:Ljava/lang/InterruptedException;
    const-string v8, "[BT][PAN][BluetoothPANService]"

    const-string v9, "mSocketListener close error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method localCreateService()V
    .locals 2

    .prologue
    .line 812
    sget-boolean v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sServerState:Z

    if-nez v0, :cond_1

    .line 813
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->updateProfileState(I)V

    .line 814
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->initServiceNative()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->serverActivateReqNative()V

    .line 818
    const-string v0, "Succeed to init BluetoothPanService."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;-><init>(Lcom/mediatek/bluetooth/pan/BluetoothPanService;Lcom/mediatek/bluetooth/pan/BluetoothPanService$1;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    .line 821
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    const-string v1, "BTPanSocketListener"

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;->setName(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;->stopped:Z

    .line 823
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mSocketListener:Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService$SocketListenerThread;->start()V

    .line 824
    const-string v0, "SocketListener started."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->printLog(Ljava/lang/String;)V

    .line 828
    :cond_0
    const-string v0, "[BT][PAN][BluetoothPANService]"

    const-string v1, "Pre-enable PAN Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    const-string v0, "[BT][PAN][BluetoothPANService]"

    const-string v1, "Failed to init BluetoothPanService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, action:Ljava/lang/String;
    const-string v1, "[BT][PAN][BluetoothPANService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter onBind(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-class v1, Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPan:Landroid/bluetooth/IBluetoothPan$Stub;

    .line 643
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanAction:Lcom/mediatek/bluetooth/pan/IBluetoothPanAction$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 650
    const-string v0, "[BT][PAN][BluetoothPANService]"

    const-string v1, "Enter onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mContext:Landroid/content/Context;

    .line 653
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 654
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mPanDevices:Ljava/util/concurrent/ConcurrentMap;

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mTetheringOn:Z

    .line 657
    const-string v0, "[BT][PAN][BluetoothPANService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API:onCreate] sUtState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sUtState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-boolean v0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->sUtState:Z

    if-nez v0, :cond_0

    .line 660
    const-string v0, "[BT][PAN][BluetoothPANService]"

    const-string v1, "[API:onCreate] library is extpan_jni.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v0, "extpan_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 666
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string v0, "[BT][PAN][BluetoothPANService]"

    const-string v1, "[API:onCreate] library is expan_ut.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v0, "extpan_ut"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 729
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 731
    const-string v0, "[BT][PAN][BluetoothPANService]"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 735
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->localClearService()V

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    .line 738
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 672
    const-string v3, "[BT][PAN][BluetoothPANService]"

    const-string v4, "Enter onStartCommand()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    if-nez v3, :cond_5

    .line 677
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 678
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 681
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    .line 682
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNM:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 684
    const-string v3, "[BT][PAN][BluetoothPANService]"

    const-string v4, "Get Notification-Manager failed. Stop PAN service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->stopSelf()V

    .line 689
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 690
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDnsServers:[Ljava/lang/String;

    .line 695
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDnsServers:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 696
    sget-object v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->DNS_DEFAULT_SERVER:[Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDnsServers:[Ljava/lang/String;

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDhcpRange:[Ljava/lang/String;

    .line 700
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 701
    :cond_2
    sget-object v3, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mDhcpRange:[Ljava/lang/String;

    .line 704
    :cond_3
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 705
    .local v2, nmb:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 707
    iget-object v3, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_4

    .line 708
    const-string v3, "[BT][PAN][BluetoothPANService]"

    const-string v4, "Error get INetworkManagementService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->stopSelf()V

    .line 712
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->localCreateService()V

    .line 713
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 715
    iput-boolean v5, p0, Lcom/mediatek/bluetooth/pan/BluetoothPanService;->mHasInitiated:Z

    .line 722
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #nmb:Landroid/os/IBinder;
    :goto_0
    return v5

    .line 718
    :cond_5
    const-string v3, "[BT][PAN][BluetoothPANService]"

    const-string v4, "Already started, just return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
