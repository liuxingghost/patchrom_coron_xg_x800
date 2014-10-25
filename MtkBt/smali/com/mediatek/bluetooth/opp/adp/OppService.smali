.class public Lcom/mediatek/bluetooth/opp/adp/OppService;
.super Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;
.source "OppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;,
        Lcom/mediatek/bluetooth/opp/adp/OppService$OppcTaskHandler;
    }
.end annotation


# static fields
.field public static final OPPS_DIALOG_RESULT:Ljava/lang/String; = "com.mediatek.bluetooth.opps.dialog_result"

.field public static final OPP_DIALOG_OPPS_CANCEL_TASK:Ljava/lang/String; = "com.android.bluetooth.opp.opps.cancelTask"

.field public static final OPP_DIALOG_OPPS_RESEND_NOTIFICATION:Ljava/lang/String; = "com.android.bluetooth.opp.opps.resendNoti"

.field public static final OPP_DIALOG_OPPS_SUBMIT_TASK_ACTION:Ljava/lang/String; = "com.android.bluetooth.opp.opps.submitTask"

.field public static final OPP_DIALOG_RECEIVER_RETURNS:Ljava/lang/String; = "com.android.bluetooth.opp.returns"

.field public static final OPP_DIALOG_RETURN_TYPE:Ljava/lang/String; = "com.android.bluetooth.opp.dialog.returnType"

.field public static final TOAST_DATABASE_FULL:I = 0x64

.field private static sCurrentUserId:I


# instance fields
.field private mDialogCallbackReceiver:Landroid/content/BroadcastReceiver;

.field private mIsOppcResetTask:Z

.field private mIsOppsResetTask:Z

.field private mIsTaskWorkThreadInterrupted:Z

.field private mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

.field private mOppcCurrentStoragePath:Ljava/lang/String;

.field private mOppcWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

.field private mOppsCurrentStoragePath:Ljava/lang/String;

.field private mOppsWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

.field private mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Landroid/os/Handler;

.field private mUserManagerService:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/opp/adp/OppService;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;-><init>()V

    .line 100
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsTaskWorkThreadInterrupted:Z

    .line 104
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppcResetTask:Z

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppsResetTask:Z

    .line 110
    iput-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcCurrentStoragePath:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mDialogCallbackReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/mediatek/bluetooth/opp/adp/OppService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/opp/adp/OppService$3;-><init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mServiceHandler:Landroid/os/Handler;

    .line 704
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/opp/adp/OppService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcCurrentStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/opp/adp/OppService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcCurrentStoragePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/opp/adp/OppService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/opp/adp/OppService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsCurrentStoragePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/opp/adp/OppService;)Lcom/mediatek/bluetooth/opp/adp/OppManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/opp/adp/OppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppcResetTask:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/opp/adp/OppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppcResetTask:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/opp/adp/OppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsTaskWorkThreadInterrupted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/opp/adp/OppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppsResetTask:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/opp/adp/OppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsOppsResetTask:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/opp/adp/OppService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCurrentUserId()I
    .locals 1

    .prologue
    .line 398
    sget v0, Lcom/mediatek/bluetooth/opp/adp/OppService;->sCurrentUserId:I

    return v0
.end method

.method private registerDialogCallbackBroadcastReceiver()V
    .locals 2

    .prologue
    .line 168
    const-string v1, "OppService.registerDialogCallbackBroadcastReceiver()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/mediatek/bluetooth/opp/adp/OppService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/opp/adp/OppService$2;-><init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mDialogCallbackReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.bluetooth.opp.returns"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mDialogCallbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void
.end method

.method private registerSdcardBroadcastReceiver()V
    .locals 2

    .prologue
    .line 120
    const-string v1, "OppService.registerSdcardBroadcastReceiver()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/mediatek/bluetooth/opp/adp/OppService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/opp/adp/OppService$1;-><init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method private unregisterDialogCallbackBroadcastReceiver()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mDialogCallbackReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mDialogCallbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    :cond_0
    return-void
.end method

.method private unregisterSdCardBroadcastReceiver()V
    .locals 1

    .prologue
    .line 158
    const-string v0, "OppService.unregisterSdCardBroadcastReceiver()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xe

    .line 225
    const-string v2, "OppService.onCreate()[+]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 228
    const-string v2, "OppService.onCreate(): BluetoothAdapter is not STATE_ON, stop OppService"

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 229
    invoke-static {p0, v6, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 231
    invoke-static {p0, v5, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 233
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->stopSelf()V

    .line 305
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->onCreate()V

    .line 240
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->mIsServiceNativeEnabled:Z

    if-nez v2, :cond_1

    .line 242
    const-string v2, "OppService native onCreate failed."

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    .line 244
    invoke-static {p0, v6, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 246
    invoke-static {p0, v5, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 248
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->stopSelf()V

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {p0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/bluetooth/opp/adp/OppManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    .line 254
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    invoke-virtual {v2, p0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->setOppService(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    .line 255
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->cancelAllNotification()V

    .line 257
    const-string v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 258
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mUserManagerService:Landroid/os/IUserManager;

    .line 259
    new-instance v1, Landroid/os/UserManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mUserManagerService:Landroid/os/IUserManager;

    invoke-direct {v1, p0, v2}, Landroid/os/UserManager;-><init>(Landroid/content/Context;Landroid/os/IUserManager;)V

    .line 260
    .local v1, userManager:Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getSwitchedUserId()I

    move-result v2

    sput v2, Lcom/mediatek/bluetooth/opp/adp/OppService;->sCurrentUserId:I

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppService get UserId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/bluetooth/opp/adp/OppService;->sCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->registerSdcardBroadcastReceiver()V

    .line 265
    invoke-direct {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->registerDialogCallbackBroadcastReceiver()V

    .line 269
    invoke-static {p0, v6, v7}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 270
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppcEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    invoke-static {p0, v6, v8}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 279
    :goto_1
    invoke-static {p0, v5, v7}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    invoke-static {p0, v5, v8}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 291
    :goto_2
    new-instance v2, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    const-string v3, "BtOppc"

    new-instance v4, Lcom/mediatek/bluetooth/opp/adp/OppService$OppcTaskHandler;

    invoke-direct {v4, p0}, Lcom/mediatek/bluetooth/opp/adp/OppService$OppcTaskHandler;-><init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    invoke-direct {v2, v3, v4}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;-><init>(Ljava/lang/String;Lcom/mediatek/bluetooth/opp/adp/OppTaskHandler;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    .line 292
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->start()V

    .line 293
    new-instance v2, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    const-string v3, "BtOpps"

    new-instance v4, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;

    invoke-direct {v4, p0}, Lcom/mediatek/bluetooth/opp/adp/OppService$OppsTaskHandler;-><init>(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    invoke-direct {v2, v3, v4}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;-><init>(Ljava/lang/String;Lcom/mediatek/bluetooth/opp/adp/OppTaskHandler;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    .line 294
    iget-object v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->start()V

    .line 304
    const-string v2, "OppService.onCreate()[-]"

    invoke-static {v2}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_2
    invoke-static {p0, v6, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    goto :goto_1

    .line 286
    :cond_3
    invoke-static {p0, v5, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xd

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 310
    const-string v0, "OppService.onDestroy()[+]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 312
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->mIsServiceNativeEnabled:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->oppOnServiceStop()V

    .line 319
    const-string v0, "OppService.onDestroy() interrupt OppTaskWorkerThread..."

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->interrupt()V

    .line 321
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->interrupt()V

    .line 323
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mIsTaskWorkThreadInterrupted:Z

    .line 326
    const-string v0, "OppService.onDestroy() disable oppc/opps native service..."

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppcDisable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-static {p0, v1, v3}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 335
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsDisable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    invoke-static {p0, v2, v3}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    .line 345
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->unregisterSdCardBroadcastReceiver()V

    .line 346
    invoke-direct {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->unregisterDialogCallbackBroadcastReceiver()V

    .line 350
    :cond_0
    const-string v0, "OppService.onDestroy() call native destroy()..."

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 351
    invoke-super {p0}, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->onDestroy()V

    .line 354
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppManager:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->setOppService(Lcom/mediatek/bluetooth/opp/adp/OppService;)V

    .line 359
    :cond_1
    const-string v0, "OppService.onDestroy()[-]"

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 360
    return-void

    .line 332
    :cond_2
    invoke-static {p0, v1, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 340
    :cond_3
    invoke-static {p0, v2, v4}, Lcom/mediatek/bluetooth/opp/adp/BluetoothOppService;->sendActivationBroadcast(Landroid/content/Context;ZI)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 365
    const-string v1, "OppService.onStartCommand()[+]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 368
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->mIsServiceNativeEnabled:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppService.onStartCommand() action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 374
    const-string v1, "com.mediatek.bluetooth.opp.action.OPPC_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppcWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->notifyNewTask()V

    .line 393
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    const-string v1, "OppService.onStartCommand()[-]"

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->i(Ljava/lang/String;)V

    .line 394
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 377
    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    const-string v1, "com.mediatek.bluetooth.opp.action.OPPS_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppService;->oppsStopListenDisconnect()V

    .line 381
    iget-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->notifyNewTask()V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/opp/adp/OppService;->mOppsWorker:Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/opp/adp/OppTaskWorkerThread;->notifyNewTask()V

    goto :goto_0

    .line 389
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppService.onStartCommand() warn: isServiceNativeEnabled["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/opp/adp/OppServiceNative;->mIsServiceNativeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] or null Intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
