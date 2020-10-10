.class Lch/blinkenlights/android/vanilla/JumpToTimeDialog$1;
.super Ljava/lang/Object;
.source "JumpToTimeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/JumpToTimeDialog;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/JumpToTimeDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog$1;->this$0:Lch/blinkenlights/android/vanilla/JumpToTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 74
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog$1;->this$0:Lch/blinkenlights/android/vanilla/JumpToTimeDialog;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 75
    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/16 p2, 0x42

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
