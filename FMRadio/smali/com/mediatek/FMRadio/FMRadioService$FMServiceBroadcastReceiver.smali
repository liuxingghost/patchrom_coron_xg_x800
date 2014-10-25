.class Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    const-string v6, "FmRx/Service"

    const-string v7, ">>> FMRadioService.onReceive"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, action:Ljava/lang/String;
    const-string v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, command:Ljava/lang/String;
    const-string v6, "FmRx/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action/Command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v6, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.mediatek.app.mtv.POWER_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.music.musicservicecommand"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "pause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V
    invoke-static {v4, v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;I)V

    .line 260
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 264
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 265
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 266
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 267
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 268
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 341
    :cond_1
    :goto_0
    const-string v4, "FmRx/Service"

    const-string v5, "<<< FMRadioService.onReceive"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_1
    return-void

    .line 272
    :cond_2
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 278
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$200(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto :goto_0

    .line 281
    :cond_4
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 283
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService;->setRDSAsync(Z)V

    goto :goto_0

    .line 285
    :cond_5
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 287
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setRDSAsync(Z)V

    goto :goto_0

    .line 289
    :cond_6
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 291
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v7, "state"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_7

    :goto_2
    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I
    invoke-static {v6, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 292
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntennaAsync(I)V

    .line 299
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v4

    if-nez v4, :cond_8

    .line 300
    const-string v4, "FmRx/Service"

    const-string v5, "onReceive.switch anntenna:need auto power up"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 291
    goto :goto_2

    .line 303
    :cond_8
    const-string v4, "FmRx/Service"

    const-string v5, "onReceive.switch anntenna:need auto power down"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 305
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 306
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 307
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 308
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 309
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V
    invoke-static {v4, v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;I)V

    goto/16 :goto_0

    .line 312
    :cond_9
    const-string v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 315
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 316
    .local v2, connectState:I
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_CONNECTION_STATE_CHANGED: connectState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ispowerup="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->handleBtConnectState(I)V
    invoke-static {v4, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;I)V

    goto/16 :goto_0

    .line 320
    .end local v2           #connectState:I
    :cond_a
    const-string v6, "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 323
    const-string v5, "android.bluetooth.a2dp.extra.RESULT_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 325
    .local v3, fmOverBTState:I
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handling ACTION_FM_OVER_BT_CONTROLLER: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->fmOverBtController(I)V
    invoke-static {v4, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$700(Lcom/mediatek/FMRadio/FMRadioService;I)V

    goto/16 :goto_0

    .line 327
    .end local v3           #fmOverBTState:I
    :cond_b
    const-string v6, "android.server.a2dp.action.FM_OVER_BT_HOST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 330
    const-string v6, "FmRx/Service"

    const-string v7, "ACTION_FM_OVER_BT_HOST"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v6

    if-nez v6, :cond_c

    .line 332
    const-string v4, "FmRx/Service"

    const-string v5, "failed to set FM over BT via Host!!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 335
    :cond_c
    const-string v6, "FmRx/Service"

    const-string v7, "setFMViaBTController(false) succeeded!!"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v6, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$802(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 337
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_0

    .line 339
    :cond_d
    const-string v4, "FmRx/Service"

    const-string v5, "Error: undefined action."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
