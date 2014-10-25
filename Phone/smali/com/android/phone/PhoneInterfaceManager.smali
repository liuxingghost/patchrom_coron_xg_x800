.method public is3GSwitchManualChange3GAllowed()Z
    .locals 1

    .prologue
    .line 4061
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->is3GSwitchManualChange3GAllowed()Z

    move-result v0

    return v0
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 1

    .prologue
    .line 4049
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->is3GSwitchManualEnabled()Z

    move-result v0

    return v0
.end method