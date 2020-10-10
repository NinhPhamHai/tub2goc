.class Lch/blinkenlights/android/vanilla/FolderPickerActivity$2;
.super Ljava/lang/Object;
.source "FolderPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FolderPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$2;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$2;->this$0:Lch/blinkenlights/android/vanilla/FolderPickerActivity;

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->setCurrentDir(Ljava/io/File;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
