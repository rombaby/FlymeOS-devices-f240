.class Lcom/lge/systemservice/service/SmartCoverService$6;
.super Ljava/lang/Object;
.source "SmartCoverService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 883
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .prologue
    .line 887
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 888
    :try_start_0
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v2

    .line 889
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 891
    .local v0, "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 892
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove CoverCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 896
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 899
    :try_start_2
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v2

    .line 900
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 901
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 902
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 903
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove PenCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 907
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 909
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 910
    :try_start_4
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v2

    .line 911
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 913
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_4

    .line 914
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove FolderCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 918
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 920
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 921
    :try_start_6
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService$6;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v2

    .line 922
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 923
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 924
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_6

    .line 925
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove SubCoverCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 929
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    :cond_7
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 930
    return-void
.end method
