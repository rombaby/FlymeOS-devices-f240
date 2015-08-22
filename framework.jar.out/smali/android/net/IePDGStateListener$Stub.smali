.class public abstract Landroid/net/IePDGStateListener$Stub;
.super Landroid/os/Binder;
.source "IePDGStateListener.java"

# interfaces
.implements Landroid/net/IePDGStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IePDGStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IePDGStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IePDGStateListener"

.field static final TRANSACTION_onCBSErrorStatusChanged:I = 0x5

.field static final TRANSACTION_onConnectionParamStatus:I = 0x4

.field static final TRANSACTION_onErrorStatusChanged:I = 0x3

.field static final TRANSACTION_onPDPStateChanged:I = 0x1

.field static final TRANSACTION_onWiFiStatusChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.IePDGStateListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/IePDGStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IePDGStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.net.IePDGStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IePDGStateListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/IePDGStateListener;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/net/IePDGStateListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IePDGStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 51
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onPDPStateChanged([I)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":[I
    :sswitch_2
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 59
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onWiFiStatusChanged(Z)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 64
    :sswitch_3
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onErrorStatusChanged(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onConnectionParamStatus([Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_5
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onCBSErrorStatusChanged(I)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
