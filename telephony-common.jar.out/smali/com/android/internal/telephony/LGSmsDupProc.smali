.class public Lcom/android/internal/telephony/LGSmsDupProc;
.super Ljava/lang/Object;
.source "LGSmsDupProc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;
    }
.end annotation


# static fields
.field private static final COMPARE_LIST_NUM:I = 0x14

.field private static compareSmsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public checkNetworkDuplicate(JLjava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p1, "timeStamp"    # J
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "messageId"    # I
    .param p5, "body"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 16
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 17
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v2, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->messageId:I

    if-ne v1, p4, :cond_0

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "[sms.mt.dup] Network Duplicated"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] timestamp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] messageId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->messageId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] body = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 28
    const/4 v1, 0x1

    .line 42
    :goto_1
    return v1

    .line 16
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;-><init>(Lcom/android/internal/telephony/LGSmsDupProc;JLjava/lang/String;ILjava/lang/String;)V

    .line 34
    .local v0, "mtSms":Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] dequeue item. timestamp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 36
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] compareSmsList.size() = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move v1, v8

    .line 42
    goto :goto_1
.end method
