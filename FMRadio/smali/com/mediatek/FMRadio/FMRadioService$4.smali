.class Lcom/mediatek/FMRadio/FMRadioService$4;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 1999
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    packed-switch p1, :pswitch_data_0

    .line 2029
    :pswitch_0
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: Audio focus change, but not need handle"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :goto_0
    return-void

    .line 2002
    :pswitch_1
    monitor-enter p0

    .line 2003
    :try_start_0
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2009
    const-string v0, "FmRx/Service"

    const-string v1, "onAudioFocusChange.setParameters end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, -0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;I)V

    .line 2011
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2015
    :pswitch_2
    monitor-enter p0

    .line 2016
    :try_start_1
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, -0x2

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;I)V

    .line 2018
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2022
    :pswitch_3
    monitor-enter p0

    .line 2023
    :try_start_2
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;I)V

    .line 2025
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 2000
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
