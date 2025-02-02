<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<details>
<summary>Table of Contents</summary>

- [Trucks](#trucks)
  - [Engine Types](#engine-types)
    - [Engine impact on Payload](#engine-impact-on-payload)
    - [Horsepower & Torque](#horsepower--torque)
      - [Gas engine torque band](#gas-engine-torque-band)
      - [Diesel engine torque band](#diesel-engine-torque-band)
    - [Engine Type Pros/Cons](#engine-type-proscons)
    - [General recommendations](#general-recommendations)
    - [FAQ](#faq)

</details>
<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Trucks

## Engine Types

**On electric trucks:** I haven't included much eletric truck research here yet, but consider:

 - They tend to not have great payload or tow ratings (so far)
 - They can lose range with more load, so you won't go as far. They also lose up to
   1/3 of their range in cold weather.
 - Many camp sites don't allow charging at the camp-site hookup. They also only
   offer 120VAC, so you will get about 1 mile per 1.5 hrs charging, if they allow it.

**On hybrid trucks:** Comparable to regular gas trucks, but with decreased payload and
marginally better fuel economy, but more power.

**On LPG trucks:** Not done any research on this.


### Engine impact on Payload

For a specific truck model, the engine choice will usually change the payload capacity.

Heavier engines, OR engines without as much power, can reduce payload capacity.

Different engines also change the axle, transmission, and differential, which all
affect payload capacity.


### Horsepower & Torque

In general, diesels win, but there are exceptions.

- Gas engines lose power by 3-4% per 1,000 ft. elevation. To maintain performance, reduce GVWs and GCWs by 2% per 1,000 ft. elevation starting at the 1,000 ft. elevation point.

- Check the entire torque band rating for a motor. Gas engines' torque can be very low at low RPMs. You may want more low-end torque to haul a camper (for example, if you're parked on a hill, or going up a hill at high elevation).

- Turbos add power at elevation by increasing air density, so a turbo gas or diesel will do much better than a naturally-aspirated equivalent.


<details><summary>Impact of engine type on torque band</summary>

#### Gas engine torque band

__START_EMBED_CONTENT__
csv2md truck_torque_gas.csv
__END_EMBED_CONTENT__

#### Diesel engine torque band

__START_EMBED_CONTENT__
csv2md truck_torque_diesel.csv
__END_EMBED_CONTENT__

</details>


### Engine Type Pros/Cons

__START_EMBED_CONTENT__
csv2md enginetype_pros_cons.csv
__END_EMBED_CONTENT__


### General recommendations

- If cost is no concern, OR you don't want a small truck, OR you need to haul something heavy, AND you want it to work fine at high elevation, get a diesel. More power & low-end torque, lasts longer, better fuel economy, is fine at elevation, and fine in the cold (as long as you maintain the glow plugs and try to use winter fuel when possible).
- If you can't find a diesel, or it doesn't fit your budget or use-case, a turbo gasoline engine is a good all-around option. It won't have good low-end torque but it will probably do well enough.
- If you want a small-ish fuel-efficient truck, go with gas, hybrid or electric.
- If you're going to tour the world with it, you may find diesel fuel (& mechanics/parts) are more widely available.

### FAQ

- [Which engine is better at high altitude?](https://engineering.mit.edu/engage/ask-an-engineer/which-engine-is-better-at-high-altitude-diesel-or-gasoline/)

