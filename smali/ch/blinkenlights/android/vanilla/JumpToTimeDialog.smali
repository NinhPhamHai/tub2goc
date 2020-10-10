.class public Lch/blinkenlights/android/vanilla/JumpToTimeDialog;
.super Landroid/app/DialogFragment;
.source "JumpToTimeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/JumpToTimeDialog$OnPositionSubmitListener;
    }
.end annotation


# instance fields
.field private hoursView:Landroid/widget/EditText;

.field private minutesView:Landroid/widget/EditText;

.field private secondsView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static parseInteger(Ljava/lang/String;)I
    .locals 1

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    .line 61
    new-instance v0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;

    invoke-direct {v0}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;-><init>()V

    const-string v1, "JumpToTimeDialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 112
    :try_start_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->hoursView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->parseInteger(Ljava/lang/String;)I

    move-result p2

    .line 113
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->minutesView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->parseInteger(Ljava/lang/String;)I

    move-result v0

    .line 114
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->secondsView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->parseInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p2, v0

    add-int/2addr p2, v1

    mul-int/lit16 p2, p2, 0x3e8

    .line 116
    move-object v0, p1

    check-cast v0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog$OnPositionSubmitListener;

    invoke-interface {v0, p2}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog$OnPositionSubmitListener;->onPositionSubmit(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->error_invalid_position:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 67
    new-instance p1, Lch/blinkenlights/android/vanilla/JumpToTimeDialog$1;

    invoke-direct {p1, p0}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog$1;-><init>(Lch/blinkenlights/android/vanilla/JumpToTimeDialog;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lch/blinkenlights/android/vanilla/R$layout;->duration_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->hours:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->hoursView:Landroid/widget/EditText;

    .line 90
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->hoursView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->minutes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->minutesView:Landroid/widget/EditText;

    .line 92
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->minutesView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->seconds:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->secondsView:Landroid/widget/EditText;

    .line 94
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->secondsView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->jump_to_time:I

    .line 97
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 99
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 100
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->hoursView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method
