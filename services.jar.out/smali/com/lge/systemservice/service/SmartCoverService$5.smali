.class Lcom/lge/systemservice/service/SmartCoverService$5;
.super Landroid/os/Handler;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/service/SmartCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/service/SmartCoverService;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 554
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 555
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 556
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 557
    .local v4, "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 558
    monitor-exit v7

    .line 718
    .end local v4    # "newState":I
    :cond_0
    :goto_0
    return-void

    .line 561
    .restart local v4    # "newState":I
    :cond_1
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$702(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 562
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartCover state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-nez v6, :cond_2

    .line 566
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v6, :cond_3

    .line 567
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v8, v8, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v8, 0x5

    invoke-interface {v6, v8}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 573
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 574
    :try_start_1
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    .local v0, "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_2
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 581
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 591
    .end local v4    # "newState":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 569
    .restart local v4    # "newState":I
    :cond_3
    :try_start_5
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v8, "can\'t boost. mLGPowerManagerLoader is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 581
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 584
    :try_start_7
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    const/high16 v6, 0x4000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 588
    const-string v6, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 591
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 592
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newState":I
    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_8

    .line 593
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 594
    :try_start_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 595
    .restart local v4    # "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_6

    .line 596
    monitor-exit v7

    goto/16 :goto_0

    .line 617
    .end local v4    # "newState":I
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    .line 599
    .restart local v4    # "newState":I
    :cond_6
    :try_start_9
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$1102(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 600
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pen state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 603
    :try_start_a
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 605
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_b
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    .line 606
    :catch_1
    move-exception v1

    .line 607
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_c
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 610
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_3
    move-exception v6

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 612
    :try_start_f
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.ACCESSORY_PEN_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    const-string v6, "com.lge.intent.extra.ACCESSORY_PEN_STATE"

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 617
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    .line 618
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newState":I
    :cond_8
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 619
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 620
    :try_start_10
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 621
    .local v5, "newType":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 622
    monitor-exit v7

    goto/16 :goto_0

    .line 638
    .end local v5    # "newType":I
    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v6

    .line 625
    .restart local v5    # "newType":I
    :cond_9
    :try_start_11
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v6, v5}, Lcom/lge/systemservice/service/SmartCoverService;->access$1302(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 627
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartCover type changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 630
    :try_start_12
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 632
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_13
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onTypeChanged(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_4

    .line 633
    :catch_2
    move-exception v1

    .line 634
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_14
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 637
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_5
    move-exception v6

    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_a
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 638
    :try_start_17
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/16 :goto_0

    .line 639
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newType":I
    :cond_b
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_10

    .line 640
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1400(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 641
    :try_start_18
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 642
    .restart local v4    # "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_c

    .line 643
    monitor-exit v7

    goto/16 :goto_0

    .line 673
    .end local v4    # "newState":I
    :catchall_6
    move-exception v6

    monitor-exit v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v6

    .line 646
    .restart local v4    # "newState":I
    :cond_c
    :try_start_19
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$1502(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 647
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "folder state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-nez v6, :cond_d

    .line 651
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v6, :cond_e

    .line 652
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v8, v8, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v8, 0x5

    invoke-interface {v6, v8}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 658
    :cond_d
    :goto_5
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 659
    :try_start_1a
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 661
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_1b
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto :goto_6

    .line 662
    :catch_3
    move-exception v1

    .line 663
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_1c
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 666
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_7
    move-exception v6

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    throw v6

    .line 654
    :cond_e
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v8, "can\'t boost. mLGPowerManagerLoader is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_5

    .line 666
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_f
    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 668
    :try_start_1f
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.ACCESSORY_FOLDER_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    const-string v6, "com.lge.intent.extra.ACCESSORY_FOLDER_STATE"

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 673
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto/16 :goto_0

    .line 674
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newState":I
    :cond_10
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_13

    .line 675
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 676
    :try_start_20
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 677
    .restart local v4    # "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1800(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_11

    .line 678
    monitor-exit v7

    goto/16 :goto_0

    .line 694
    .end local v4    # "newState":I
    :catchall_8
    move-exception v6

    monitor-exit v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    throw v6

    .line 681
    .restart local v4    # "newState":I
    :cond_11
    :try_start_21
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$1802(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 683
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubCover state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1800(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 686
    :try_start_22
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 688
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_23
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1800(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_7

    .line 689
    :catch_4
    move-exception v1

    .line 690
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_24
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 693
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_9
    move-exception v6

    monitor-exit v8
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    throw v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_12
    :try_start_26
    monitor-exit v8
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 694
    :try_start_27
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    goto/16 :goto_0

    .line 695
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "newState":I
    :cond_13
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x16

    if-ne v6, v7, :cond_0

    .line 696
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 697
    :try_start_28
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 698
    .restart local v5    # "newType":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v5, v6, :cond_14

    .line 699
    monitor-exit v7

    goto/16 :goto_0

    .line 716
    .end local v5    # "newType":I
    :catchall_a
    move-exception v6

    monitor-exit v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    throw v6

    .line 702
    .restart local v5    # "newType":I
    :cond_14
    :try_start_29
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v6, v5}, Lcom/lge/systemservice/service/SmartCoverService;->access$2002(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 704
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubCover type changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->setUSBSound()V
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2100(Lcom/lge/systemservice/service/SmartCoverService;)V

    .line 707
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    .line 708
    :try_start_2a
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 710
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_2b
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onTypeChanged(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_5
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    goto :goto_8

    .line 711
    :catch_5
    move-exception v1

    .line 712
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_2c
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 715
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_b
    move-exception v6

    monitor-exit v8
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    :try_start_2d
    throw v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_15
    :try_start_2e
    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    .line 716
    :try_start_2f
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    goto/16 :goto_0
.end method
