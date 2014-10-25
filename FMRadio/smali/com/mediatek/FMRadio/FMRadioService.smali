.class public Lcom/mediatek/FMRadio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;,
        Lcom/mediatek/FMRadio/FMRadioService$Record;,
        Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;,
        Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final BT_PROPERTIES:Ljava/lang/String; = "bt.fmoverbt"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final FM_POWER_DOWN_MSG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final FM_POWER_UP_MSG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field private static final FOR_PROPRIETARY:I = 0x5

.field private static final HEADSET_PLUG_IN:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final OPTION:Ljava/lang/String; = "option"

.field public static final RDS_EVENT_AF:I = 0x80

.field public static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field public static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field private static final SHORT_ANNTENNA_SUPPORT:Z = false

.field public static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final TAG:Ljava/lang/String; = "FmRx/Service"


# instance fields
.field private mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mDefaultSDCardPath:Ljava/lang/String;

.field private mErrorType:I

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

.field private mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

.field private mForcedUseForMedia:I

.field private mICallBack:Landroid/os/IBinder;

.field private mIsAFEnabled:Z

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsInRecordingMode:Z

.field private mIsMakePowerDown:Z

.field private mIsNativeScanning:Z

.field private mIsNativeSeeking:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsPowerUping:Z

.field private mIsRDSThreadExit:Z

.field private mIsScanning:Z

.field private mIsSeeking:Z

.field private mIsServiceInit:Z

.field private mIsShortAntennaSupport:Z

.field private mIsSpeakerUsed:Z

.field private mIsStopScanCalled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mRDSThread:Ljava/lang/Thread;

.field private mRecordState:I

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/FMRadio/FMRadioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mUsingFMViaBTController:Z

.field private mValueHeadSetPlug:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 131
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    .line 133
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 135
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 137
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordState:I

    .line 139
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    .line 145
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 153
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    .line 157
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    .line 161
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    .line 165
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 167
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 169
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 171
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    .line 173
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 175
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 177
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 179
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 182
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 184
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 187
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 189
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 191
    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    .line 193
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 195
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 198
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    .line 202
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Landroid/os/IBinder;

    .line 206
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 208
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 1916
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$3;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1991
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$4;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2359
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->closeDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioService;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStation(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioService;[I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->insertSearchedStation([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocus(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setAudioChannel(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->activeAF()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startRecording()V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startPlayback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->saveRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->handleBtConnectState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->fmOverBtController(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    return-void
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 956
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 957
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, -0x1

    .line 963
    :goto_0
    return v0

    .line 961
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v0

    .line 962
    .local v0, frequency:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private chipSupportOverBt()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1190
    const-string v3, "bt.fmoverbt"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1191
    .local v0, result:I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt.fmoverbt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-ne v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 396
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, isDeviceClose:Z
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 399
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 400
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 402
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 406
    return v0

    .line 400
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private connectBtDevice()V
    .locals 3

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FmRx/Service"

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP sent to A2dp service!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1717
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_1

    .line 1719
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "mFMPlayer is null in Service.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :goto_0
    return-void

    .line 1724
    :cond_1
    if-nez p1, :cond_4

    .line 1725
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1726
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer isPlaying."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1745
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1752
    :goto_1
    const-string v1, "FmRx/Service"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FMRadioService.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1730
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1731
    const-string v1, "FmRx/Service"

    const-string v2, "stop FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1735
    :cond_4
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1736
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1746
    :catch_1
    move-exception v0

    .line 1747
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1748
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1749
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitFM()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1512
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFM start"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1516
    .local v0, fmState:I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_3

    .line 1517
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1518
    const-string v1, "FmRx/Service"

    const-string v2, "Stop playback FMRecorder."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    .end local v0           #fmState:I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_2

    .line 1527
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1533
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1535
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1536
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1538
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFM end"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return-void

    .line 1519
    .restart local v0       #fmState:I
    :cond_3
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 1521
    const-string v1, "FmRx/Service"

    const-string v2, "Discard Recording."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fmOverBtController(I)V
    .locals 5
    .parameter "fmOverBTState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2283
    packed-switch p1, :pswitch_data_0

    .line 2315
    const-string v1, "FmRx/Service"

    const-string v2, "invalid fm over bt state"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :goto_0
    return-void

    .line 2285
    :pswitch_0
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2286
    const-string v1, "FmRx/Service"

    const-string v2, "failed to set FM over BT via Controller!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2289
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "setFMViaBTController(true) succeeded!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 2293
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2294
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2295
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2296
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2297
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setRecordingMode(Z)V

    .line 2298
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2299
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100111

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2300
    const-string v1, "key_is_recording_mode"

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2301
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2303
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 2307
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 2311
    :pswitch_2
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_FM_OVER_BT_CONTROLLER: FM over BT already on-going!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleBtConnectState(I)V
    .locals 4
    .parameter "connectState"

    .prologue
    const/4 v3, 0x0

    .line 2234
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 2274
    :goto_0
    return-void

    .line 2238
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2271
    const-string v1, "FmRx/Service"

    const-string v2, "invalid fm over bt connect state"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2241
    :sswitch_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-eqz v1, :cond_1

    .line 2242
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED: FM over BT already enabled, ignore this message"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2245
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->chipSupportOverBt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2246
    const-string v1, "FmRx/Service"

    const-string v2, "chip not support fm over bt, ignore this message"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2249
    :cond_2
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED: disable FM audio first to avoid I2S noise!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 2251
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->connectBtDevice()V

    goto :goto_0

    .line 2256
    :sswitch_1
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2257
    const-string v1, "FmRx/Service"

    const-string v2, "failed to set FM over BT via Host!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2260
    :cond_3
    const-string v1, "FmRx/Service"

    const-string v2, "setFMViaBTController(false) succeeded!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 2262
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 2264
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2265
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100111

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2266
    const-string v1, "key_is_recording_mode"

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2267
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2238
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private handlePowerUp(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 2588
    const/4 v1, 0x0

    .line 2589
    .local v1, isPowerup:Z
    const/4 v2, 0x1

    .line 2590
    .local v2, isSwitch:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2591
    .local v3, time:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performance test. service handler power up start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    const-string v5, "frequency"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2595
    .local v0, curFrequency:F
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2596
    const-string v5, "FmRx/Service"

    const-string v6, "call back to activity, earphone is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 2598
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 2599
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 2600
    .restart local p1
    const-string v5, "callback_flag"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2601
    const-string v5, "key_is_switch_anntenna"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2602
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2618
    :goto_0
    return-void

    .line 2606
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2607
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z

    move-result v1

    .line 2608
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2610
    :cond_1
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 2611
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 2612
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 2613
    .restart local p1
    const-string v5, "callback_flag"

    const/16 v6, 0x9

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2614
    const-string v5, "key_is_power_up"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2615
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2617
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performance test. service handler power up end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePowernDown()V
    .locals 4

    .prologue
    .line 2576
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z

    move-result v1

    .line 2577
    .local v1, isPowerdown:Z
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2578
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "callback_flag"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2579
    const-string v2, "key_is_power_down"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2580
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2581
    return-void
.end method

.method private initDevice(F)Z
    .locals 4
    .parameter "frequency"

    .prologue
    const/4 v3, 0x1

    .line 533
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 536
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 538
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 541
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "FmRx/Service"

    const-string v1, "RDS is supported. Start the RDS thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 548
    const-string v0, "FmRx/Service"

    const-string v1, "acquire wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->setBtStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 552
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerPhoneOn()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 553
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 555
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 557
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 559
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 560
    const-string v0, "FmRx/Service"

    const-string v1, "Error while trying to switch to short antenna: "

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_4
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    .line 566
    :cond_5
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 569
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method private insertSearchedStation([I)[I
    .locals 10
    .parameter "channels"

    .prologue
    .line 2321
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSearchedStation.firstValidChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 2323
    .local v3, firstValidChannel:I
    const/4 v0, 0x0

    .line 2324
    .local v0, channelNum:I
    if-eqz p1, :cond_4

    .line 2325
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2326
    array-length v6, p1

    .line 2328
    .local v6, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const v7, 0x7f040015

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2330
    .local v1, defaultStationName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 2331
    aget v7, p1, v4

    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2332
    if-nez v0, :cond_0

    .line 2333
    aget v3, p1, v4

    .line 2336
    :cond_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    aget v8, p1, v4

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2337
    sget-object v7, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "COLUMN_STATION_NAME"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "COLUMN_STATION_FREQ"

    aget v9, p1, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "COLUMN_STATION_TYPE"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2343
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2330
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2348
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.mediatek.FMRadio.FMRadioContentProvider"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2355
    .end local v1           #defaultStationName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #size:I
    :cond_4
    :goto_1
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSearchedStation.firstValidChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",channelNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v0, v7, v8

    return-object v7

    .line 2349
    .restart local v1       #defaultStationName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #size:I
    :catch_0
    move-exception v2

    .line 2350
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when applyBatch searched stations "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2351
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2352
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when applyBatch searched stations "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 372
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityStateChanged(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 2165
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2166
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyActivityStatusChanged:clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2168
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2169
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/FMRadio/FMRadioService$Record;

    .line 2172
    .local v2, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    iget-object v1, v2, Lcom/mediatek/FMRadio/FMRadioService$Record;->mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 2174
    .local v1, listener:Lcom/mediatek/FMRadio/FMRadioListener;
    if-nez v1, :cond_1

    .line 2175
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2176
    monitor-exit v4

    .line 2183
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .end local v2           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :cond_0
    :goto_1
    return-void

    .line 2179
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .restart local v1       #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .restart local v2       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/FMRadioListener;->onCallBack(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2181
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .end local v2           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private openDevice()Z
    .locals 3

    .prologue
    .line 382
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.openDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 386
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.openDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method private powerUpFM(F)Z
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 500
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> FMRadioService.powerUp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v4, :cond_0

    .line 503
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< FMRadioService.powerUp: already power up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_0
    return v2

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcastToStopOtherAPP()V

    .line 508
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->requestAudioFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 510
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 511
    const-string v2, "FmRx/Service"

    const-string v4, "FM can\'t get audio focus when power up"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 512
    goto :goto_0

    .line 514
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 515
    .local v0, time:J
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performance test. service native power up start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 517
    const-string v2, "FmRx/Service"

    const-string v4, "Error: powerup failed."

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 518
    goto :goto_0

    .line 520
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 521
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performance test. service native power up end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 524
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 527
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 528
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    goto :goto_0
.end method

.method private registerSDListener()V
    .locals 3

    .prologue
    .line 1795
    const-string v1, "FmRx/Service"

    const-string v2, "registerSDListener >>> "

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1797
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioService$2;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 1836
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1837
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1838
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1839
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1840
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1841
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1842
    const-string v1, "FmRx/Service"

    const-string v2, "registerSDListener <<< "

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    return-void
.end method

.method private remove(I)V
    .locals 4
    .parameter "hashCode"

    .prologue
    .line 2202
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2203
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2204
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/FMRadioService$Record;

    .line 2206
    .local v1, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    iget v2, v1, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    if-ne v2, p1, :cond_0

    .line 2207
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2210
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2211
    return-void
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 1777
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopForeground(Z)V

    .line 1779
    return-void
.end method

.method private saveRecording(Ljava/lang/String;)V
    .locals 2
    .parameter "newName"

    .prologue
    .line 1303
    const-string v0, "FmRx/Service"

    const-string v1, ">>> saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/FMRadio/FMRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1307
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_0
    return-void

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 1312
    :cond_1
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekStation(FZ)F
    .locals 9
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    const/4 v8, 0x0

    .line 764
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v5, :cond_0

    .line 767
    const-string v5, "FmRx/Service"

    const-string v6, "FM is not powered up"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/high16 v2, -0x4080

    .line 784
    :goto_0
    return v2

    .line 771
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 772
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 774
    .local v3, startSeekTime:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time start ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {p1, p2}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v2

    .line 776
    .local v2, fRet:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 777
    .local v0, endSeekTime:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    .line 782
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 783
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastToStopOtherAPP()V
    .locals 3

    .prologue
    .line 589
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, intentToMusic:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v0, intentToFMTx:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method private setAudioChannel(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1161
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1163
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v0, 0x0

    .line 1166
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private setBtStatus(Z)Z
    .locals 1
    .parameter "isPowerUp"

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 4
    .parameter "lrtText"

    .prologue
    .line 1677
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.setLRText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1679
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 1680
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1681
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100100

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1682
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1686
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setMute(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 984
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 985
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v0, -0x1

    .line 992
    :goto_0
    return v0

    .line 989
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 991
    .local v0, iRet:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 4
    .parameter "ps"

    .prologue
    .line 1659
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.setPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1663
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100011

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1664
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1668
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setRDS(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 900
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 901
    const/4 v0, -0x1

    .line 912
    :goto_0
    return v0

    .line 903
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, -0x1

    .line 905
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 909
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    .line 910
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    .line 911
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRecordingMode(Z)V
    .locals 3
    .parameter "isRecording"

    .prologue
    .line 1346
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    .line 1348
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_2

    .line 1349
    if-nez p1, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1352
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1354
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1355
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->resetRecorder()V

    .line 1361
    :cond_2
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1760
    const-string v4, "FmRx/Service"

    const-string v5, "FMRadioService.showNotification"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1762
    .local v1, notificationIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1764
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    const v4, 0x7f020029

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1765
    .local v0, notification:Landroid/app/Notification;
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MHz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1767
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1769
    const-string v4, "FmRx/Service"

    const-string v5, "Add notification to the title bar."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/FMRadio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1771
    return-void
.end method

.method private startPlayback()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1244
    const-string v1, "FmRx/Service"

    const-string v2, ">>> startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->requestAudioFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1247
    const-string v1, "FmRx/Service"

    const-string v2, "can\'t get audio focus when play recording file"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :goto_0
    return v0

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v1, :cond_1

    .line 1252
    const-string v1, "FmRx/Service"

    const-string v2, "FMRecorder is null !!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1256
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1258
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startPlayback()V

    .line 1260
    const-string v0, "FmRx/Service"

    const-string v1, "<<< startPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startRDSThread()V
    .locals 2

    .prologue
    .line 1560
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 1562
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1637
    :goto_0
    return-void

    .line 1565
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$1;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 1634
    const-string v0, "FmRx/Service"

    const-string v1, "Start RDS Thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1636
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 3

    .prologue
    .line 1204
    const-string v0, "FmRx/Service"

    const-string v1, ">>> startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 1206
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default sd card file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Lcom/mediatek/FMRadio/FMRecorder;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/FMRecorder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1209
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/FMRadio/FMRecorder;->registerRecorderStateListener(Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startRecording()V

    .line 1212
    const-string v0, "FmRx/Service"

    const-string v1, "<<< startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void
.end method

.method private startScan()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 798
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FMRadioService.startScan"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v1, 0x0

    .line 801
    .local v1, iChannels:[I
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 802
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 804
    const/4 v2, 0x0

    .line 805
    .local v2, shortChannels:[S
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    if-nez v4, :cond_0

    .line 806
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    .line 807
    const-string v4, "FmRx/Service"

    const-string v5, "startScan native method:start"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v2

    .line 809
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScan native method:end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    .line 813
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 814
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    if-eqz v4, :cond_1

    .line 818
    new-array v2, v8, [S

    .end local v2           #shortChannels:[S
    const/16 v4, -0x64

    aput-short v4, v2, v7

    .line 819
    .restart local v2       #shortChannels:[S
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 825
    :goto_0
    if-eqz v2, :cond_2

    .line 826
    array-length v3, v2

    .line 827
    .local v3, size:I
    new-array v1, v3, [I

    .line 828
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 829
    aget-short v4, v2, v0

    aput v4, v1, v0

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 822
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_1
    const-string v4, "FmRx/Service"

    const-string v5, "startScan: scan complete, but don\'t enable audio yet!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    :cond_2
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< FMRadioService.startScan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-object v1
.end method

.method private stopFMFocusLoss(I)V
    .locals 2
    .parameter "focusState"

    .prologue
    .line 1896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1897
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    if-eqz v0, :cond_1

    .line 1900
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1901
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so stop scan channel."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V

    .line 1909
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so powerdown FM."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 1274
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1279
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1282
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method private stopRDSThread()V
    .locals 2

    .prologue
    .line 1643
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 1649
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return-void
.end method

.method private stopRecording()Z
    .locals 2

    .prologue
    .line 1224
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1226
    const-string v0, "FmRx/Service"

    const-string v1, "stopRecording called without a valid recorder!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v0, 0x0

    .line 1231
    :goto_0
    return v0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1230
    const-string v0, "FmRx/Service"

    const-string v1, "<<< stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchAntenna(I)I
    .locals 4
    .parameter "antenna"

    .prologue
    .line 1096
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.switchAntenna:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1105
    .local v0, ret:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v0
.end method

.method private tuneStation(F)Z
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 708
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> FMRadioService.tune: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v3, :cond_1

    .line 710
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 711
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 712
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 713
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 714
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v3

    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 715
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 716
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V

    .line 718
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 719
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v0           #bRet:Z
    :goto_0
    return v0

    .line 723
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 724
    const-string v3, "FmRx/Service"

    const-string v4, "<<< FMRadioService.tune: earphone is not insert and short antenna not support"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 725
    goto :goto_0

    .line 729
    :cond_2
    const-string v3, "FmRx/Service"

    const-string v4, "FM is not powered up"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, tune:Z
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 734
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z

    move-result v1

    .line 736
    :cond_3
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 737
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.tune: mIsPowerup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 738
    goto :goto_0
.end method

.method private updateAudioFocus(I)V
    .locals 11
    .parameter "focusState"

    .prologue
    const/16 v10, 0x17

    const/16 v9, 0x16

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 2055
    const-string v3, "FmRx/Service"

    const-string v4, "FMRadioService.updateAudioFocus"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    packed-switch p1, :pswitch_data_0

    .line 2121
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2058
    :pswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2059
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUDIOFOCUS_LOSS: mPausedByTransientLossOfFocus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v3, :cond_2

    .line 2064
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v2

    .line 2065
    .local v2, fmState:I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopFMFocusLoss.recorder state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    if-ne v2, v7, :cond_1

    .line 2067
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v9}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2068
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v10}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2069
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z

    .line 2071
    :cond_1
    if-ne v2, v8, :cond_2

    .line 2072
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2073
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2074
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V

    .line 2077
    .end local v2           #fmState:I
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V

    goto :goto_0

    .line 2081
    :pswitch_2
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v3, :cond_3

    .line 2082
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2084
    :cond_3
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUDIOFOCUS_LOSS_TRANSIENT: mPausedByTransientLossOfFocus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v3, :cond_5

    .line 2089
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v2

    .line 2090
    .restart local v2       #fmState:I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopFMFocusLoss.recorder state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    if-ne v2, v7, :cond_4

    .line 2092
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v9}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2093
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v10}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2094
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z

    .line 2096
    :cond_4
    if-ne v2, v8, :cond_5

    .line 2097
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2098
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2099
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V

    .line 2102
    .end local v2           #fmState:I
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V

    goto/16 :goto_0

    .line 2106
    :pswitch_3
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUDIOFOCUS_GAIN: mPausedByTransientLossOfFocus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    if-eqz v3, :cond_0

    .line 2108
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 2109
    const/4 v1, 0x1

    .line 2110
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2111
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 2113
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2114
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2056
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateAudioFocusAync(I)V
    .locals 6
    .parameter "focusState"

    .prologue
    .line 2041
    monitor-enter p0

    :try_start_0
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAudioFocusAync: focusState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const/4 v1, 0x1

    .line 2043
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2044
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "key_audiofocus_changed"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2045
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2046
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2047
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    monitor-exit p0

    return-void

    .line 2041
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleSize:I
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 1785
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.updateNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1787
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1789
    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1986
    return-void
.end method

.method public activeAFAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 951
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 952
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 953
    return-void
.end method

.method public getAudioChannelSetting()Z
    .locals 2

    .prologue
    .line 1134
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1136
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    goto :goto_0
.end method

.method public getCapArray()I
    .locals 2

    .prologue
    .line 1113
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readCapArray"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1115
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v0, -0x1

    .line 1118
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readCapArray()S

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1044
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 1185
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 941
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 931
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsBler()I
    .locals 2

    .prologue
    .line 1173
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1175
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v0, -0x1

    .line 1178
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRdsBler()S

    move-result v0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->recordTime()J

    move-result-wide v0

    .line 1325
    :goto_0
    return-wide v0

    .line 1324
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1382
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1370
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 1125
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRssi"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1127
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v0, -0x1

    .line 1130
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 1694
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .parameter "iCurrentStation"

    .prologue
    .line 1023
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 1025
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 1026
    return-void
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 415
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isDeviceOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method public isFmViaBt()Z
    .locals 1

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return v0
.end method

.method public isMakePowerDown()Z
    .locals 3

    .prologue
    .line 686
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.mIsMakePowerDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    return v0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 665
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method public isPowerUping()Z
    .locals 3

    .prologue
    .line 676
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    return v0
.end method

.method public isRDSSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1001
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isRDSsupport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1002
    .local v0, isRDSSupported:Z
    :goto_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return v0

    .line 1001
    .end local v0           #isRDSSupported:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 2222
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2223
    .local v0, unmountSDCard:Ljava/lang/String;
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmount sd card file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    return v0
.end method

.method public isServiceInit()Z
    .locals 3

    .prologue
    .line 1034
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isServiceInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return v0
.end method

.method public isShortAntennaSupport()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    return v0
.end method

.method public isSpeakerUsed()Z
    .locals 3

    .prologue
    .line 1012
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isEarphoneUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 214
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 221
    .local v0, iCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Landroid/os/IBinder;

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1543
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1545
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1546
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1548
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1408
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1409
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const-string v4, "FmRx/Service"

    const-string v5, "short antenna support: false"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 1412
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1413
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1414
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v4, "FmRx/Service"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1415
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1416
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 1417
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1418
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1420
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v5, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1436
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1438
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "FmRadioServiceThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v2, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1440
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    .line 1443
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1444
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1445
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1446
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1447
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1448
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1461
    const-string v4, "FmRx/Service"

    const-string v5, "Register broadcast receiver."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1466
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerSDListener()V

    .line 1469
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->openDevice()Z

    .line 1476
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1477
    const-string v4, "FmRx/Service"

    const-string v5, "<<< FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handlerThread:Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 1421
    :catch_0
    move-exception v0

    .line 1423
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1427
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1429
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1430
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1432
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 1433
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1482
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    const-string v0, "FmRx/Service"

    const-string v1, "RDS is supported. Stop the RDS thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1490
    const-string v0, "FmRx/Service"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1492
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1494
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->abandonAudioFocus()V

    .line 1495
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V

    .line 1498
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_2

    .line 1499
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1502
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1505
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1506
    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 2

    .prologue
    .line 1888
    const-string v0, "FmRx/Service"

    const-string v1, "service.onPlayRecordFileComplete"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1890
    return-void
.end method

.method public onRecorderError(I)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v2, 0x4

    .line 1867
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecorderError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/16 v1, 0x64

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    .line 1873
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1874
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v3, 0x100110

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1875
    const-string v1, "key_recording_error_type"

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1876
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1879
    if-ne v2, p1, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1882
    :cond_0
    return-void

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    move v1, p1

    .line 1871
    goto :goto_0
.end method

.method public onRecorderStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1852
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecorderStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordState:I

    .line 1854
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1855
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100101

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1856
    const-string v1, "key_is_recording_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1857
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1858
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1552
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.onStartCommand intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public powerDown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 619
    const-string v2, "FmRx/Service"

    const-string v3, ">>> FMRadioService.powerDown"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v2, :cond_0

    .line 622
    const-string v1, "FmRx/Service"

    const-string v2, "Error: device is already power down."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return v0

    .line 626
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 627
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 628
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 630
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 631
    const-string v0, "FmRx/Service"

    const-string v2, "Error: powerdown failed."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 632
    goto :goto_0

    .line 635
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 636
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 638
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    const-string v2, "FmRx/Service"

    const-string v3, "RDS is supported. Stop the RDS thread."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V

    .line 643
    :cond_2
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 646
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 648
    const-string v2, "FmRx/Service"

    const-string v3, "release wake lock"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_3
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setBtStatus(Z)Z

    .line 654
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    .line 655
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FMRadioService.powerDown: true"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerDownAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 610
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 611
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 612
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 613
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 614
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 615
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 616
    return-void
.end method

.method public powerUpAsync(F)V
    .locals 7
    .parameter "frequency"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 485
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 486
    const/4 v1, 0x1

    .line 487
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 488
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 490
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 491
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 492
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 493
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    return-void
.end method

.method public registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 2140
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2143
    const/4 v3, 0x0

    .line 2144
    .local v3, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2145
    .local v0, hashCode:I
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2146
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .local v4, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2147
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2148
    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_2
    iget v5, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    if-ne v0, v5, :cond_0

    .line 2149
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2157
    :goto_1
    return-void

    .line 2146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v4       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    goto :goto_0

    .line 2152
    :cond_1
    :try_start_3
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService$Record;-><init>(Lcom/mediatek/FMRadio/FMRadioService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2153
    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_4
    iput v0, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    .line 2154
    iput-object p1, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 2155
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    monitor-exit v6

    goto :goto_1

    .end local v0           #hashCode:I
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v0       #hashCode:I
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v4       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    goto :goto_2
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1970
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    if-eqz v2, :cond_0

    .line 1977
    :goto_0
    return v1

    .line 1974
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1976
    .local v0, audioFocus:I
    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1977
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    goto :goto_0

    .line 1976
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resumeFMAudio()V
    .locals 2

    .prologue
    .line 1062
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1066
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1068
    :cond_0
    return-void
.end method

.method public saveRecordingAsync(Ljava/lang/String;)V
    .locals 5
    .parameter "newName"

    .prologue
    const/16 v4, 0x1a

    .line 1293
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1294
    const/4 v1, 0x1

    .line 1295
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1296
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1298
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1299
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1300
    return-void
.end method

.method public seekStationAsync(FZ)V
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    const/16 v4, 0x10

    .line 751
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 752
    const/4 v1, 0x2

    .line 753
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 754
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 755
    const-string v3, "option"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 756
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 757
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 758
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 759
    return-void
.end method

.method public setAudioChannelAsync(Z)V
    .locals 5
    .parameter "isMono"

    .prologue
    const/4 v4, 0x6

    .line 1150
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1151
    const/4 v1, 0x1

    .line 1152
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1153
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1156
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1157
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .parameter "station"

    .prologue
    .line 1055
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 1056
    return-void
.end method

.method public setMuteAsync(Z)V
    .locals 5
    .parameter "mute"

    .prologue
    const/4 v4, 0x7

    .line 974
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 975
    const/4 v1, 0x1

    .line 976
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 977
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 978
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 979
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 980
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 981
    return-void
.end method

.method public setRDSAsync(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x5

    .line 890
    const/4 v1, 0x1

    .line 891
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 892
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 893
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 894
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 895
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 896
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    return-void
.end method

.method public setRecordingModeAsync(Z)V
    .locals 5
    .parameter "isRecording"

    .prologue
    const/16 v4, 0x15

    .line 1336
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1337
    const/4 v1, 0x1

    .line 1338
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1339
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1340
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1341
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1342
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1343
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 3
    .parameter "isSpeaker"

    .prologue
    .line 363
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.useSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    .line 365
    const/4 v0, 0x5

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 366
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    .line 367
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.useSpeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1706
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public startPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 1239
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1240
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1241
    return-void
.end method

.method public startRecordingAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 1199
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1200
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1201
    return-void
.end method

.method public startScanAsync()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 793
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 795
    return-void
.end method

.method public stopPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 1269
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1270
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1271
    return-void
.end method

.method public stopRecordingAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 1219
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1220
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1221
    return-void
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 851
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FMRadioService.stopScan"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 854
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v0, 0x0

    .line 870
    :goto_0
    return v0

    .line 858
    :cond_0
    const/4 v0, 0x0

    .line 860
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 861
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 863
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_2

    .line 864
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 865
    const-string v1, "FmRx/Service"

    const-string v2, "native stop scan:start"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 867
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native stop scan:end --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_2
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntennaAsync(I)V
    .locals 5
    .parameter "antenna"

    .prologue
    const/4 v4, 0x4

    .line 1078
    const/4 v1, 0x1

    .line 1079
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1081
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1082
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "switch_anntenna_value"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1084
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1085
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1086
    return-void
.end method

.method public tuneStationAsync(F)V
    .locals 5
    .parameter "frequency"

    .prologue
    const/16 v4, 0xf

    .line 698
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 699
    const/4 v1, 0x1

    .line 700
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 701
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 702
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 703
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 704
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 705
    return-void
.end method

.method public unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2192
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->remove(I)V

    .line 2193
    return-void
.end method
