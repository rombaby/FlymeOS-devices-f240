.class public Lcom/lge/wfds/send/transmitter/SearchedData;
.super Ljava/lang/Object;
.source "SearchedData.java"


# instance fields
.field public device_name:Ljava/lang/String;

.field public device_status:I

.field public mac_addr:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->uuid:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->mac_addr:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->device_status:I

    .line 33
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->device_name:Ljava/lang/String;

    .line 34
    return-void
.end method
