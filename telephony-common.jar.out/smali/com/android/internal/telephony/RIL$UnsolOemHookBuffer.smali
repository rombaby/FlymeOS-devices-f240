.class public final Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UnsolOemHookBuffer"
.end annotation


# instance fields
.field private mData:[B

.field private mRilInstance:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;I[B)V
    .locals 0
    .param p2, "rilInstance"    # I
    .param p3, "data"    # [B

    .prologue
    .line 4886
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4887
    iput p2, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mRilInstance:I

    .line 4888
    iput-object p3, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    .line 4889
    return-void
.end method


# virtual methods
.method public getRilInstance()I
    .locals 1

    .prologue
    .line 4892
    iget v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mRilInstance:I

    return v0
.end method

.method public getUnsolOemHookBuffer()[B
    .locals 1

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    return-object v0
.end method