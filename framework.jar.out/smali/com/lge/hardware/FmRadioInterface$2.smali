.class Lcom/lge/hardware/FmRadioInterface$2;
.super Landroid/os/Handler;
.source "FmRadioInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/FmRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hardware/FmRadioInterface;


# direct methods
.method constructor <init>(Lcom/lge/hardware/FmRadioInterface;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    const-string v1, "FMFRW_FmRadioInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRadioInterface.statusHandler received :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->toStringFromMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->getFMRadioCommand(I)Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v0

    .line 201
    .local v0, "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    sget-object v1, Lcom/lge/hardware/FmRadioInterface$5;->$SwitchMap$com$lge$internal$hardware$fmradio$FMRadioCommand:[I

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->initialized:Z

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v5, v1, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v5, v1, Lcom/lge/hardware/FmRadioInterface;->on:Z

    .line 216
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    .line 217
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/lge/hardware/FmRadioInterface;->currentFrequency:I

    .line 218
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    .line 219
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v5, v1, Lcom/lge/hardware/FmRadioInterface;->isRDSOn:Z

    .line 222
    :pswitch_3
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->isScanning:Z

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->on:Z

    .line 229
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    .line 230
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    .line 231
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->isScanning:Z

    .line 232
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->isRDSOn:Z

    .line 233
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    invoke-virtual {v1}, Lcom/lge/hardware/FmRadioInterface;->terminateIfConditionMet()V

    goto :goto_0

    .line 237
    :pswitch_5
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->on:Z

    .line 238
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    .line 239
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v5, v1, Lcom/lge/hardware/FmRadioInterface;->paused:Z

    goto :goto_0

    .line 244
    :pswitch_6
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->switching:Z

    goto :goto_0

    .line 250
    :pswitch_7
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    # getter for: Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;
    invoke-static {v1}, Lcom/lge/hardware/FmRadioInterface;->access$000(Lcom/lge/hardware/FmRadioInterface;)Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsInitialize()V

    .line 251
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/lge/hardware/FmRadioInterface;->currentFrequency:I

    goto :goto_0

    .line 256
    :pswitch_8
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    # getter for: Lcom/lge/hardware/FmRadioInterface;->rdsListener:Lcom/lge/internal/hardware/fmradio/RdsData;
    invoke-static {v1}, Lcom/lge/hardware/FmRadioInterface;->access$000(Lcom/lge/hardware/FmRadioInterface;)Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsInitialize()V

    .line 257
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput v4, v1, Lcom/lge/hardware/FmRadioInterface;->currentFrequency:I

    goto :goto_0

    .line 260
    :pswitch_9
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v5, v1, Lcom/lge/hardware/FmRadioInterface;->isRDSOn:Z

    goto :goto_0

    .line 263
    :pswitch_a
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$2;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iput-boolean v4, v1, Lcom/lge/hardware/FmRadioInterface;->isRDSOn:Z

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
