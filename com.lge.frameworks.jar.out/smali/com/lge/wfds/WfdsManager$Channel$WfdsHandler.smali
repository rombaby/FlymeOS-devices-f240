.class Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;
.super Landroid/os/Handler;
.source "WfdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsManager$Channel;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$0:Lcom/lge/wfds/WfdsManager$Channel;

    .line 300
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x900000

    .line 305
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$0:Lcom/lge/wfds/WfdsManager$Channel;

    iget v5, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->getListener(I)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/lge/wfds/WfdsManager$Channel;->access$200(Lcom/lge/wfds/WfdsManager$Channel;I)Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 433
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : Ignored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$0:Lcom/lge/wfds/WfdsManager$Channel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mChannelListener:Lcom/lge/wfds/WfdsManager$WfdsChannelListener;
    invoke-static {v4}, Lcom/lge/wfds/WfdsManager$Channel;->access$300(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$0:Lcom/lge/wfds/WfdsManager$Channel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mChannelListener:Lcom/lge/wfds/WfdsManager$WfdsChannelListener;
    invoke-static {v4}, Lcom/lge/wfds/WfdsManager$Channel;->access$300(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/wfds/WfdsManager$WfdsChannelListener;->onChannelDisconnected()V

    .line 314
    iget-object v4, p0, Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;->this$0:Lcom/lge/wfds/WfdsManager$Channel;

    # setter for: Lcom/lge/wfds/WfdsManager$Channel;->mChannelListener:Lcom/lge/wfds/WfdsManager$WfdsChannelListener;
    invoke-static {v4, v8}, Lcom/lge/wfds/WfdsManager$Channel;->access$302(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsChannelListener;)Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    goto :goto_0

    .line 322
    :sswitch_1
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsActionListener.onSuccess for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz v1, :cond_0

    .line 325
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/lge/wfds/WfdsManager$WfdsActionListener;->onSuccess()V

    goto :goto_0

    .line 333
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_2
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsActionListener.onFailure for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v1, :cond_0

    .line 336
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsActionListener;->onFailure(I)V

    goto :goto_0

    .line 344
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_3
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsIntListener.onSuccess for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v1, :cond_0

    .line 347
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsIntListener;->onSuccess(I)V

    goto/16 :goto_0

    .line 355
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_4
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsIntListener.onFailure for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eqz v1, :cond_0

    .line 358
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsIntListener;->onFailure(I)V

    goto/16 :goto_0

    .line 366
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_5
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsStrListener.onSuccess for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "sValue":Ljava/lang/String;
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v3}, Lcom/lge/wfds/WfdsManager$WfdsStrListener;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .end local v3    # "sValue":Ljava/lang/String;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_6
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsStrListener.onFailure for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v1, :cond_0

    .line 381
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsStrListener;->onFailure(I)V

    goto/16 :goto_0

    .line 389
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_7
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsIntStrListener.onSuccess for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "mac":Ljava/lang/String;
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4, v2}, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;->onSuccess(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v2    # "mac":Ljava/lang/String;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsIntStrListener.onFailure for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz v1, :cond_0

    .line 404
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;->onFailure(I)V

    goto/16 :goto_0

    .line 412
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_9
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsAspSessionListener.onSuccess for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-class v5, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 416
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 417
    .local v0, "aspSession":Lcom/lge/wfds/session/AspSession;
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v0}, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;->onSuccess(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_0

    .line 425
    .end local v0    # "aspSession":Lcom/lge/wfds/session/AspSession;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_a
    const-string v4, "WfdsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdsHandler : WfdsAspSessionListener.onFailure for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eqz v1, :cond_0

    .line 428
    check-cast v1, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4}, Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;->onFailure(I)V

    goto/16 :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x90001f -> :sswitch_2
        0x900020 -> :sswitch_1
        0x900021 -> :sswitch_4
        0x900022 -> :sswitch_3
        0x900023 -> :sswitch_6
        0x900024 -> :sswitch_5
        0x900025 -> :sswitch_8
        0x900026 -> :sswitch_7
        0x900027 -> :sswitch_a
        0x900028 -> :sswitch_9
    .end sparse-switch
.end method
