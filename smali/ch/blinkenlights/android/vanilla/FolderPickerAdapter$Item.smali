.class public Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;
.super Ljava/lang/Object;
.source "FolderPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FolderPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field color:I

.field file:Ljava/io/File;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->file:Ljava/io/File;

    .line 47
    iput p3, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->color:I

    return-void
.end method
