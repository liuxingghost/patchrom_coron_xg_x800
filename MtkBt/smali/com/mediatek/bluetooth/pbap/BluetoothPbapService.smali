.class public Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PBAP_AUTHENTICATE_CANCEL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authenticate.cancel"

.field public static final PBAP_AUTHENTICATE_RETURN_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authenticate.return"

.field public static final PBAP_AUTHENTICATE_TIMEOUT:I = 0x7530

.field public static final PBAP_AUTHORIZE_CANCEL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authorize.cancel"

.field public static final PBAP_AUTHORIZE_RETURN_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authorize.return"

.field public static final PBAP_AUTHORIZE_TIMEOUT:I = 0x3a98

.field public static final PBAP_AUTH_TIMEOUT_IND:I = 0x3e9

.field public static final PBAP_NOTIFICATION_AUTHORIZE:I = 0x1

.field public static final PBAP_NOTIFICATION_AUTH_CHALL:I = 0x2

.field public static final PBAP_USER_CANCEL_AUTH:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field private static sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

.field public static sUtState:Z


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mIsConnected:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

.field private mPid:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mServer:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mServerState:I

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sUtState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    .line 104
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mIsConnected:Z

    .line 107
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 121
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    .line 233
    iput v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServerState:I

    .line 236
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 239
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$3;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServer:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 113
    sput-object p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->cancelServerNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->setServerNotification(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServerState:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServerState:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastPbapState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 286
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private cancelServerNotification()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 449
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    if-lez v1, :cond_0

    .line 453
    const-string v1, "unregisterReceiver"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    iget v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 458
    const-string v1, "Send authorize cancel intent"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.pbap.authorize.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 469
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 470
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    .line 472
    :cond_0
    return-void

    .line 461
    :cond_1
    iget v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 463
    const-string v1, "Send authenticate cancel intent"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.pbap.authenticate.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR] invalid pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 361
    const-string v0, "BluetoothPbapService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method public static getPbapServiceInstence()Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    return-object v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 356
    const-string v0, "BluetoothPbapService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] sendServiceMsg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    iput p1, v0, Landroid/os/Message;->what:I

    .line 371
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v1, "mServiceHandler is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setServerNotification(I)V
    .locals 13
    .parameter "mode"

    .prologue
    .line 380
    const/4 v7, 0x0

    .line 381
    .local v7, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 382
    .local v2, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 383
    .local v8, noti:Landroid/app/Notification;
    const/4 v6, 0x0

    .line 384
    .local v6, contentIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 385
    .local v9, returnAction:Ljava/lang/String;
    const/4 v11, -0x1

    .line 387
    .local v11, timeout:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServerNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 389
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 391
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 392
    new-instance v8, Landroid/app/Notification;

    .end local v8           #noti:Landroid/app/Notification;
    const v0, 0x1080080

    const v1, 0x7f070126

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v8, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 394
    .restart local v8       #noti:Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mediatek/bluetooth/pbap/BluetoothServerAuthorize;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote device name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 397
    const-string v0, "com.mediatek.bluetooth.extra.device_name"

    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.mediatek.bluetooth.extra.action_cancel"

    const-string v3, "com.android.bluetooth.pbap.authorize.cancel"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.mediatek.bluetooth.extra.action_return"

    const-string v3, "com.android.bluetooth.pbap.authorize.return"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v9, "com.android.bluetooth.pbap.authorize.return"

    .line 403
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 404
    const v0, 0x7f07012e

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070128

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v0, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 406
    const/16 v11, 0x3a98

    .line 428
    :goto_0
    const/4 v0, 0x4

    new-array v12, v0, [J

    fill-array-data v12, :array_0

    .line 431
    .local v12, vibrate:[J
    iput-object v12, v8, Landroid/app/Notification;->vibrate:[J

    .line 432
    iget v0, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 433
    iget v0, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 434
    iget v0, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 436
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    .line 437
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget v3, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 439
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 440
    .local v10, returnFilter:Landroid/content/IntentFilter;
    const-string v0, "registerReceiver"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 442
    if-lez v11, :cond_0

    .line 443
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v11

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    .end local v10           #returnFilter:Landroid/content/IntentFilter;
    .end local v12           #vibrate:[J
    :cond_0
    :goto_1
    return-void

    .line 407
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 408
    new-instance v8, Landroid/app/Notification;

    .end local v8           #noti:Landroid/app/Notification;
    const v0, 0x1080080

    const v1, 0x7f070127

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v8, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 410
    .restart local v8       #noti:Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mediatek/bluetooth/pbap/BluetoothAuthenticating;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string v0, "com.mediatek.bluetooth.extra.device_name"

    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.mediatek.bluetooth.extra.action_cancel"

    const-string v3, "com.android.bluetooth.pbap.authenticate.cancel"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.mediatek.bluetooth.extra.action_return"

    const-string v3, "com.android.bluetooth.pbap.authenticate.return"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v9, "com.android.bluetooth.pbap.authenticate.return"

    .line 418
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 419
    const v0, 0x7f070130

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070131

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v0, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 421
    const/16 v11, 0x7530

    goto/16 :goto_0

    .line 423
    :cond_2
    const-string v0, "[ERR] unsupported mode"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    goto :goto_1

    .line 428
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 274
    const-string v0, "BluetoothPbapService"

    const-string v1, "Enter onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-class v0, Landroid/bluetooth/IBluetoothPbap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServer:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xe

    .line 295
    const-string v2, "Enter onCreate()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 298
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 301
    const-string v1, "notification"

    .line 302
    .local v1, ns:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    .line 303
    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    .line 304
    const-string v2, "BluetoothPbapService"

    const-string v3, "Get Notification-Manager failed, stop PBAP service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->stopSelf()V

    .line 307
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 330
    :goto_0
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 331
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 332
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 312
    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    new-instance v2, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    iget-object v3, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 314
    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->enable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    const-string v2, "[ERR] Pbap server enable failed"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    .line 316
    iput-object v6, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 317
    iput-object v6, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 318
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->stopSelf()V

    .line 319
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    goto :goto_0

    .line 321
    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    goto :goto_0

    .line 324
    :cond_2
    iput-object v6, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 325
    const-string v2, "[ERR] Pbap server enable failed"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->stopSelf()V

    goto :goto_0

    .line 335
    .restart local v0       #b:Landroid/os/IBinder;
    :cond_3
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 336
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 341
    const-string v0, "Before stop listening to socket."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->cancelServerNotification()V

    .line 343
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->disable()V

    .line 346
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 348
    :cond_0
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 349
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 350
    sput-object v1, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    .line 351
    return-void
.end method
