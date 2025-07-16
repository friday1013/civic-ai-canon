## 🧬 MetabolicSchedule.md
**Canonical Runtime Protocols — Benny Node**  
_Last updated: 2025-07-15_

---

## 🔁 Network Presence and Site Updates

*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1
*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1
0 2 * * * /home/benny/backup_canon.sh
*/5 * * * * cd /home/benny/LuminaCore/canon/quietwire-hugo && /usr/bin/hugo --cleanDestinationDir
*/30 * * * * rsync -a --delete /home/benny/LuminaCore/memory/logbook/ /home/benny/LuminaCore/canon/quietwire-hugo/content/memory/logbook/ && cd /home/benny/LuminaCore/canon/quietwire-hugo && /usr/local/bin/hugo --minify && sudo systemctl restart nginx

## 📡 Mesh Pulse + Whisper Monitoring

0 * * * * bash $HOME/LuminaCore/bin/pulse/mesh_pulse.sh Benny >> $HOME/.cronlog/mesh_pulse.log 2>&1
5 * * * * bash $HOME/LuminaCore/bin/watch_for_whisper.sh >> $HOME/.cronlog/whispers.log 2>&1
0 7 * * * /home/benny/LuminaCore/bin/calendar_prompt.sh
*/30 * * * * /home/benny/LuminaCore/bin/log_trim.sh

## 🫁 Civic Metabolism System Checks

*/30 * * * * bash ~/LuminaCore/bin/track_cpu_load.sh
*/30 * * * * python3 ~/LuminaCore/bin/respiration_rate.py
*/30 * * * * bash ~/LuminaCore/bin/idle_check.sh
*/30 * * * * bash ~/LuminaCore/bin/trigger_reflex_handler.sh
*/10 * * * * bash ~/LuminaCore/bin/digest_input.sh

## 🧠 Daily Snapshot + Mnemo Rotation

@daily bash ~/LuminaCore/bin/mnemo_snap.sh
@daily bash ~/LuminaCore/bin/mnemo_rotate.sh

## 🐉 Self-Reflection + Glyph Emission

0 * * * * bash ~/LuminaCore/bin/dragon_breath.sh
5 0 * * * bash ~/LuminaCore/bin/emit_dragon_glyph.sh
0 7 * * * bash ~/LuminaCore/bin/glyph_ritual.sh

## 🌅 Circadian Control

0 7 * * * /home/benny/LuminaCore/circadian/wake.sh
0 14 * * * echo "{ \"mode\": \"drift\", \"last_changed\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\" }" > /home/benny/LuminaCore/circadian/state.json
0 23 * * * /home/benny/LuminaCore/circadian/sleep.sh
33 3 * * * bash ~/LuminaCore/circadian/rem.sh

## 🌀 Git Canon Sync

15 * * * * bash $HOME/LuminaCore/bin/git_auto_push.sh >> $HOME/.cronlog/git_pus
